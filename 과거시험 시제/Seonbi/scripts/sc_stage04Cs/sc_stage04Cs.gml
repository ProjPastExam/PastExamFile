// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage04Cs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 1) x = x + 4;
	if (state == 20 || state == 21) x = x + 8;
	
	var ii = 220;
	var iy = 520;

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 30;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_foot, global.vol, 30);
			isTalk = 5;
			alarm[1] = 130;
			break;
			
		case 2:
			sc_csBase(4, 1, sp_chun_face_angry, ii, -500);
			sprite_index = sp_pl_standPeace;
			BGS_Set(0, 0);
			break;
			
		case 3:
			image_xscale = -1;
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
			BGM_Play(s_mCs_normal, global.volBgm, 0);
			sc_csBase(4, 2, sp_chun_face_angry, ii, iy);
			break;
			
		case 7:
			sc_csBase(4, 3, sp_chun_face_angry, ii, iy);
			break;
			
		case 8:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
		
		case 9:
			sc_csBase(4, 4, sp_chun_face_angry, ii, iy);
			break;
			
		case 10:
			sc_csBase(4, 5, sp_chun_face_angry, ii, iy);
			break;
			
		case 11:
			sc_csBase(4, 6, sp_chun_face_angry, ii, iy);
			break;
			
		case 12:
			sc_csBase(4, 7, sp_chun_face_angry, ii, iy);
			break;
			
		case 13:
			BGM_Stop(90);
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 14:
			sc_csBase(4, 8, sp_chun_face_angry, ii, iy);
			break;
			
		case 15:
			BGM_Play(s_mB04_1, global.volBgm, 0);
			sc_csBase(4, 9, sp_chun_face_angry, ii, iy);
			break;
			
		case 16:
			sc_csBase(4, 10, sp_chun_face_angry, ii, iy);
			break;
			
		case 17:
			sc_csBase(4, 11, sp_chun_face_angry, ii, iy);
			break;
			
		case 18:
			sc_csBase(4, 12, sp_chun_face_angry, ii, iy);
			break;
			
		case 19:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 20:
			image_xscale = 1;
			sprite_index = sp_pl_run;
			BGS_Play(s_run, global.vol, 0);
			alarm[1] = 80;
			break;
			
		case 21:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}