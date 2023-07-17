// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage05BossCs1(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 3) x = x + 8;
	if (state == 10) x = x + 4;
	
	var ii = 570;
	var iy = 520;
	
	var sx = 680;
	var sy = 520;
	
	var csvHor = 16;

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 30;
			isTalk = 4;
			break;
			
		case 1:
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 2:
			alarm[1] = 60;
			BGS_Set(0, 0);
			break;
			
		case 3:
			BGS_Play(s_run, global.vol, 30);
			alarm[1] = 120;
			break;
			
		case 4:
			alarm[1] = 60;
			sprite_index = sp_pl_standPeace;
			BGS_Set(0, 0);
			break;
			
		case 5:
			alarm[1] = 60;
			SE_Play(s_chun_reward, global.vol);
			break;
		
		case 6:
			alarm[1] = 60;
			break;
			
		case 7:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			alarm[1] = 120;
			isTalk = 5;
			break;
			
		case 8:
			sc_csBase(csvHor, 1, sp_chun_face_angry, ii, iy);
			break;
		
		case 9:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 10:
			sprite_index = sp_pl_walk;
			alarm[1] = 80;
			BGS_Play(s_foot, global.vol, 0);
			break;
			
		case 11:
			sprite_index = sp_cs02_plSit;
			image_index = 0;
			alarm[1] = 25;
			BGS_Set(0, 0);
			break;
			
		case 12:
			sprite_index = sp_cs02_plSitDown;
			alarm[1] = 60;
			break;
			
		case 13:
			ob_roomControl.isTalk = 7;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 14:
			sc_csBase(csvHor, 2, sp_chun_face_embar, ii, iy);
			break;
			
		case 15:
			sc_csBase(csvHor, 3, sp_chun_face_angry, ii, iy);
			break;
			
		case 16:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 17:
			alarm[1] = 30;
			SE_Play(s_chun_spell2, global.vol);
			break;
			
		case 18:
			instance_create_layer(uc_get_x(), uc_get_y(), "effect", ob_whiteIn);
			alarm[1] = 120;
			x -= 300;
			sprite_index = sp_pl_stand;
			break;
			
		case 19:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 20:
			ob_roomControl.isTalk = 7;
			sc_csBase2(sx, sy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 21:
			sc_csBase(csvHor, 4, sp_gu_face, sx, sy);
			break;
			
		case 22:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}