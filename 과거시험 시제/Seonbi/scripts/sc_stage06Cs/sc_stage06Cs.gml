// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage06Cs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 1) x = x + 4;
	
	var ii = 220;
	var iy = 520;
	
	var sx = 900;
	var sy = 520;
	
	var csvHor = 8;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 30;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_foot, global.vol, 30);
			isTalk = 4;
			alarm[1] = 130;
			break;
			
		case 2:
			alarm[1] = 60;
			isTalk = 4;
			sprite_index = sp_pl_standPeace;
			BGS_Set(0, 0);
			break;
			
		case 3:
			ob_roomControl.isTalk = 4;
			alarm[1] = 60;
			SE_Play(s_chun_reward, global.vol);
			isTalk = 4;
			break;
			
		case 4:
			alarm[1] = 60;
			break;
			
		case 5:
			ob_roomControl.isTalk = 7;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
		
		case 6:
			//BGM_Play(s_mCs_normal, global.volBgm, 0);
			sc_csBase(csvHor, 1, sp_chun_face_angry, ii, iy);
			break;
			
		case 7:
			sc_csBase(csvHor, 2, sp_chun_face_angry, ii, iy);
			break;
			
		case 8:
			sc_csBase(csvHor, 3, sp_chun_face_angry, ii, iy);
			break;
			
		case 9:
			sc_csBase(csvHor, 4, sp_sin1_face, -500, 0);
			break;
		
		case 10:
			ob_roomControl.isTalk = 4;
			SE_Play(s_thun, global.vol);
			uc_shake(15, 0.05);
			instance_create_layer(uc_get_x(), uc_get_y(), "effect", ob_whiteIn);
			BGM_Play(s_mB06_1, global.volBgm, 0);
			alarm[1] = 60;
			sprite_index = sp_pl_stand;
			break;
			
		case 11:
			ob_roomControl.isTalk = 7;
			sc_csBase2(ii, iy);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 12:
			isTalk = 5;
			alarm[1] = 60;
			break;
			
		case 13:
			sc_csBase(csvHor, 5, sp_sin1_face, sx, sy);
			break;
			
		case 14:
			sc_csBase(csvHor, 6, sp_sin1_face, sx, sy);
			break;
			
		case 15:
			ob_roomControl.isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 16:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			BGM_Stop(120);
			break;
			
		case 17:
			sprite_index = sp_pl_standPeace;
			image_xscale = -1;
			sc_csBase(csvHor, 7, sp_chun_face_angry, ii, iy);
			break;
			
		case 18:
			sc_csBase(csvHor, 8, sp_chun_face_angry, ii, iy);
			break;
			
		case 19:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 20:
			sc_csBase(csvHor, 9, sp_chun_face_silence, ii, iy);
			break;
			
		case 21:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 22:
			BGM_Play(s_mr06, global.volBgm, 0);
			sc_csBase(csvHor, 10, sp_chun_face_angry, ii, iy);
			break;
			
		case 23:
			sc_csBase(csvHor, 11, sp_chun_face_angry, ii, iy);
			break;
			
		case 24:
			sc_csBase(csvHor, 12, sp_chun_face_smile, ii, iy);
			break;
			
		case 25:
			sc_csBase(csvHor, 13, sp_chun_face_smile, ii, iy);
			break;
			
		case 26:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 30;
			break;
			
		case 27:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}