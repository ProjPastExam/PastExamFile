// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_cs02(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 1 || state == 18 || state == 19) x = x + 3;
	
	var ii = 720;
	var iy = 640
	
	var csvHor = 8;

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 180;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_foot, global.vol, 60);
			alarm[1] = 180;
			isTalk = 5;
			break;
			
		case 2:
			BGS_Set(0, 0);
			BGM_Play(s_mB01_1, global.volBgm, 0);
			SE_Play(s_talk, global.vol);
			sprite_index = sp_pl_standPeace;
			sc_csBase(csvHor, 1, sp_npc_blank, -50, 540);
			uc_shake(10, 0.05);
			break;
			
		case 3:
			ob_roomControl.isTalk = 7;
			sc_csBase2(x, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 4:
			BGS_Play(s_run, global.vol, 30);
			isTalk = 4;
			alarm[1] = 185;
			break;
			
		case 5:
			BGS_Set(0, 0);
			isTalk = 5;
			alarm[1] = 120;
			break;
		
		case 6:
			sc_csBase(csvHor, 2, sp_cs02_face, ii, iy);
			break;
			
		case 7:
			ob_roomControl.isTalk = 6;
			sc_csBase2(x, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 8:
			
			image_index = 0;
			sprite_index = sp_cs02_plSit;
			isTalk = 4;
			alarm[1] = 60;
			break;
		
		case 9:
			sprite_index = sp_cs02_plSitDown;
			isTalk = 5;
			alarm[1] = 100;
			break;
		
		case 10:
			sc_csBase(csvHor, 3, sp_cs02_face, ii, iy);
			break;
		
		case 11:
			sc_csBase(csvHor, 4, sp_cs02_face, ii, iy);
			break;
			
		case 12:
			sc_csBase(csvHor, 5, sp_cs02_face, ii, iy);
			break;
		
		case 13:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 150;
			break;
		
		case 14:
			sc_csBase(csvHor, 6, sp_cs02_face, ii, iy);
			break;
			
		case 15:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 560);
			isTalk = 4;
			alarm[1] = 150;
			break;
			
		case 16:
			image_index = 0;
			sprite_index = sp_cs02_plStand;
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 17:
			image_index = 0;
			sprite_index = sp_pl_standPeace;
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 18:
			BGS_Play(s_foot, global.vol, 0);
			sprite_index = sp_pl_walk;
			isTalk = 4;
			alarm[1] = 210;
			break;
			
		case 19:
			BGS_Set(0, 120);
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}