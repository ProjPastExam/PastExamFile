// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage02BossCs2(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var ii = 720;
	var iy = 540
	
	var csvHor = 16;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 150;
			isTalk = 5;
			break;
			
		case 1:
			sc_csBase(csvHor, 1, sp_st02Cs_npc1_face, 1110, iy);
			break;
			
		case 2:
			sc_csBase(csvHor, 2, sp_st02Cs_npc3_face, 1240, iy);
			break;
			
		case 3:
			sc_csBase(csvHor, 3, sp_st02Cs_npc2_face, 1370, iy);
			break;
			
		case 4:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 5:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}