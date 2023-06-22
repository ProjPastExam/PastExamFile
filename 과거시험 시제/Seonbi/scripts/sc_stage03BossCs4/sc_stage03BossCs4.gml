// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage03BossCs4(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	
	var soldX	= 290;
	var soldY	= 540;
	var plX		= 1050;
	
	var csvHor = 16;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 90;
			isTalk = 4;
			break;
			
		case 1:
			alarm[1] = 90;
			isTalk = 7;
			break;
		
		case 2:
			sc_csBase2(soldX, soldY);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 3:
			BGM_Play(s_mChun, global.volBgm, 0);
			isTalk = 8;
			sc_csBase(csvHor, 1, sp_sold1_face, soldX, soldY);
			image_xscale = -1;
			break;
			
		case 4:
			ob_roomControl.isTalk = 8
			sc_csBase2(soldX, soldY);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 5:
			sc_csBase(csvHor, 2, sp_sold1_face, soldX, soldY);
			break;
			
		case 6:
			ob_roomControl.isTalk = 4;
			isTalk = 4
			alarm[1] = 60;
			break;
			
		case 7:
			ob_roomControl.alarm[7] = 1;
			break;
			
		/*
		case 6:
			sc_csBase(8, 3, sp_sold1_face, soldX, soldY);
			break;
			
		case 7:
			sc_csBase(8, 4, sp_sold1_face, soldX, soldY);
			break;
			
		case 8:
			ob_roomControl.isTalk = 8
			sc_csBase2(soldX, soldY);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 9:
			sc_csBase(8, 5, sp_sold1_face, soldX, soldY);
			break;
			
		case 10:
			sc_csBase(8, 6, sp_sold1_face, soldX, soldY);
			break;
			
		case 11:
			sc_csBase(8, 7, sp_sold1_face, soldX, soldY);
			break;
			
		case 12:
			ob_roomControl.isTalk = 8;
			sc_csBase2(plX, soldY);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 13:
			sc_csBase(8, 8, sp_sold1_face, soldX, soldY);
			break;
			
		case 14:
			sc_csBase(8, 9, sp_sold1_face, soldX, soldY);
			break;
			
		case 15:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 16:
			ob_roomControl.alarm[7] = 1;
			break;
		*/
		}
	}
}