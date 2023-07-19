// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage06BossCs2(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	//if (state == 1) x = x + 8;
	
	var ii = 220;
	var iy = 520;
	
	var sx = 860;
	var sx2 = 1170;
	var sy = 520;
	
	var csvHor = 24;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 90;
			isTalk = 4;
			break;
			
		case 1:
			ob_roomControl.isTalk = 8;
			sc_csBase2(sx, sy);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 2:
			alarm[1] = 60;
			isTalk = 5;
			break;
			
		case 3:
			BGM_Play(s_mChun, global.volBgm, 0);
			sc_csBase(csvHor, 1, sp_sin2_face, sx, sy);
			break;
			
		case 4:
			sc_csBase(csvHor, 2, sp_sin2_face, sx, sy);
			break;
			
		case 5:
			ob_roomControl.isTalk = 4;
			alarm[1] = 40;
			isTalk = 4;
			break;
		
		case 6:
			BGS_Play(s_foot, global.vol, 0);
			alarm[1] = 80;
			isTalk = 4;
			break;
			
		case 7:
			BGS_Set(0, 0);
			alarm[1] = 120;
			isTalk = 4;
			SE_Play(s_jpBoss_tele, global.vol);
			break;
			
		case 8:
			with (ob_stage06BossCs2Mal)
			{
				image_speed = 1;
			}
			alarm[1] = 120;
			isTalk = 4;
			break;
			
		case 9:
			alarm[1] = 90;
			isTalk = 4;
			break;
			
		case 10:
			ob_roomControl.isTalk = 8;
			sc_csBase2(sx2, sy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 11:
			sc_csBase(csvHor, 3, sp_sin2_face, sx2, sy);
			break;
			
		case 12:
			sc_csBase(csvHor, 4, sp_sin2_face, sx2, sy);
			break;
			
		case 13:
			ob_roomControl.isTalk = 8;
			sc_csBase2(sx2, sy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 14:
			sc_csBase(csvHor, 5, sp_sin2_face, sx2, sy);
			break;
			
		case 15:
			sc_csBase(csvHor, 6, sp_sin2_face, sx2, sy);
			break;
			
		case 16:
			sc_csBase(csvHor, 7, sp_sin2_face, sx2, sy);
			break;
			
		case 17:
			BGM_Stop(80);
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 18:
			BGM_Play(s_mMain, global.volBgm, 0);
			image_xscale = -1;
			sc_csBase(csvHor, 8, sp_chun_face_smile, ii, iy);
			break;
			
		case 19:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 20:
			sc_csBase(csvHor, 9, sp_chun_face, ii, iy);
			break;
			
		case 21:
			sc_csBase(csvHor, 10, sp_chun_face, ii, iy);
			break;
			
		case 22:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 23:
			sc_csBase(csvHor, 11, sp_chun_face_smile, ii, iy);
			break;
			
		case 24:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 25:
			isTalk = 4;
			alarm[1] = 80;
			BGM_Stop(70);
			break;
			
		case 26:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}