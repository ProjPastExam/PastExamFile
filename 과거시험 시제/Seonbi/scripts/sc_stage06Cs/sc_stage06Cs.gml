// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage06Cs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 1) x = x + 4;
	
	var ii = 220;
	var iy = 520;
	
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
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
		
		case 6:
			//BGM_Play(s_mCs_normal, global.volBgm, 0);
			sc_csBase(csvHor, 1, sp_chun_face_angry, ii, iy);
			break;
			
		case 7:
			ob_roomControl.isTalk = 4;
			alarm[1] = 180;
			isTalk = 4;
			break;
			
		case 8:
			alarm[1] = 180;
			isTalk = 4;
			sprite_index = sp_pl_stand;
			break;
		
		case 9:
			ob_roomControl.isTalk = 7;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 10:
			sc_csBase(csvHor, 2, sp_chun_face_angry, ii, iy);
			break;
			
		case 11:
			process = 0;
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 7;
			break;
			
		case 12:
			process = 0;
			alarm[1] = 25;
			break;
			
		case 13:
			process = 0;
			alarm[1] = 50;
			break;
			
		case 14:
			sprite_index = sp_pl_stand;
			isTalk = 5;
			alarm[1] = 80;
			break;
			
		case 15:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 16:
			BGM_Play(s_mr05, global.volBgm, 0);
			sc_csBase(csvHor, 3, sp_chun_face_angry, ii, iy);
			break;
			
		case 17:
			sc_csBase(csvHor, 4, sp_chun_face_angry, ii, iy);
			break;
			
		case 18:
			sc_csBase(csvHor, 5, sp_chun_face_angry, ii, iy);
			break;
			
		case 19:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 30;
			break;
			
		case 20:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}