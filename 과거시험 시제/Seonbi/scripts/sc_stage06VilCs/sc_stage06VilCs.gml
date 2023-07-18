// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage06VilCs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var ii = 220;
	var iy = 520;
	
	var sx = 1152;
	var sy = 600;
	
	var csvHor = 0;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			isTalk = 4;
			alarm[1] = 60;
			break;
		
		case 1:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 2:
			BGM_Play(s_mChun, global.volBgm, 0);
			sc_csBase(csvHor, 1, sp_chun_face, ii, iy);
			break;
			
		case 3:
			sc_csBase(csvHor, 2, sp_chun_face, ii, iy);
			break;
			
		case 4:
			sc_csBase(csvHor, 3, sp_chun_face_angry, ii, iy);
			break;
			
		case 5:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 6:
			sc_csBase(csvHor, 4, sp_chun_face_smile, ii, iy);
			break;
			
		case 7:
			sc_csBase(csvHor, 5, sp_chun_face_smile, ii, iy);
			break;
			
		case 8:
			sc_csBase(csvHor, 6, sp_chun_face_smile, ii, iy);
			break;
			
		case 9:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 10:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}