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
			
		case 1:
			isTalk = 4;
			alarm[1] = 60;
			break;
		
		case 2:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 7:
			sc_csBase(csvHor, 2, sp_chun_face_silence, ii, iy);
			break;
			
		case 8:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 9:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}