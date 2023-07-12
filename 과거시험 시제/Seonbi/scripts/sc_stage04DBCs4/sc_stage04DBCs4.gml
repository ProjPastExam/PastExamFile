// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_stage04DBCs4(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var ix = 1350;
	var iy = 600;
	
	var dx = 960;
	var dy = 580;
	
	var sx = 960;
	var sy = 620;
	
	var csvHor = 36;

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 90;
			isTalk = 4;
			break;
			
		case 1:
			ob_roomControl.isTalk = 8;
			sc_csBase2(dx, dy);
			alarm[1] = 120;
			isTalk = 4;
			break;
		
		case 2:
			ob_roomControl.isTalk = 4;
			alarm[1] = 60;
			isTalk = 5;
			break;
		
		case 3:
			sc_csBase(csvHor, 1, sp_chun_face_silence, dx, dy);
			break;
			
		case 4:
			sc_csBase(csvHor, 2, sp_chun_face, dx, dy);
			break;
			
		case 5:
			sc_csBase(csvHor, 3, sp_chun_face, dx, dy);
			break;
		
		case 6:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ix, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 7:
			sc_csBase(csvHor, 4, sp_seon_face, ix, iy);
			break;
		
		case 8:
			sc_csBase(csvHor, 5, sp_seon_face, ix, iy);
			break;
			
		case 9:
			ob_roomControl.isTalk = 8;
			sc_csBase2(dx, dy);
			alarm[1] = 120;
			isTalk = 5;
			break;
			
		case 10:
			sc_csBase(csvHor, 6, sp_chun_face_embar, dx, dy);
			break;
			
		case 11:
			sc_csBase(csvHor, 7, sp_seon_face, ix, iy);
			break;
			
		case 12:
			ob_roomControl.isTalk = 8;
			sc_csBase2(dx, dy);
			alarm[1] = 120;
			isTalk = 5;
			break;
			
		case 13:
			sc_csBase(csvHor, 8, sp_seon_face, ix, iy);
			break;
			
		case 14:
			sc_csBase(csvHor, 9, sp_chun_face_embar, dx, dy);
			break;
			
		case 15:
			sc_csBase(csvHor, 10, sp_seon_face, ix, iy);
			break;
			
		case 16:
			ob_roomControl.isTalk = 4;
			alarm[1] = 120;
			isTalk = 4;
			break;
		
		case 17:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}