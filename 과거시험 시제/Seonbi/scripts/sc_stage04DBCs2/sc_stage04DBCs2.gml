// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage04DBCs2(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 2) x = x + 4;
	
	var ix = 1350;
	var iy = 600;
	
	var dx = 960;
	var dy = 580;
	
	var sx = 960;
	var sy = 620;
	
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
			sc_csBase2(x, sy);
			alarm[1] = 120;
			break;
			
		case 2:
			ob_roomControl.isTalk = 4;
			alarm[1] = 120;
			isTalk = 4;
			BGS_Play(s_foot, global.vol, 0);
			sprite_index = sp_pl_walk;
			break;
			
		case 3:
			BGS_Set(0, 0);
			image_index = 0;
			sprite_index = sp_cs02_plSit;
			alarm[1] = 60;
			break;
			
		case 4:
			sprite_index = sp_cs02_plSitDown;
			alarm[1] = 80;
			break;
			
		case 5:
			isTalk = 5;
			alarm[1] = 80;
			break;
		
		case 6:
			//ob_roomControl.isTalk = 5;
			isTalk = 5;
			sc_csBase(csvHor, 1, sp_chun_face_angry, dx, dy);
			break;
			
		case 7:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ix-20, iy+40);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 8:
			sc_csBase(csvHor, 2, sp_seon_face2, ix-20, iy+40);
			break;
		
		case 9:
			ob_roomControl.isTalk = 7;
			sc_csBase2(dx, dy);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 10:
			ob_roomControl.isTalk = 4;
			image_index = 0;
			sprite_index = sp_cs02_plStand;
			alarm[1] = 60;
			break;
		
		case 11:
			ob_roomControl.isTalk = 8;
			sprite_index = sp_pl_standPeace;
			isTalk = 5;
			sc_csBase2(ix+30, iy);
			alarm[1] = 120;
			break;
			
		case 12:
			sc_csBase(csvHor, 3, sp_seon_face2, ix+30, iy);
			isTalk = 5;
			break;
			
		case 13:
			sc_csBase(csvHor, 4, sp_chun_face_embar, dx, dy);
			break;
			
		case 14:
			sc_csBase(csvHor, 5, sp_seon_face2, ix+30, iy);
			isTalk = 4;
			break;
			
		case 15:
			ob_roomControl.isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 16:
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(ix, iy);
			alarm[1] = 120;
			break;
			
		case 17:
			sc_csBase(csvHor, 6, sp_seon_face, ix, iy);
			break;
			
		case 18:
			ob_roomControl.isTalk = 7;
			isTalk = 5;
			sc_csBase2(ix, iy);
			alarm[1] = 120;
			break;
			
		case 19:
			sc_csBase(csvHor, 7, sp_seon_face, ix, iy);
			break;
			
		case 20:
			ob_roomControl.isTalk = 8;
			sc_csBase2(dx, dy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 21:
			sc_csBase(csvHor, 8, sp_chun_face_embar, dx, dy);
			break;
			
		case 22:
			sc_csBase(csvHor, 9, sp_chun_face_angry, dx, dy);
			break;
			
		case 23:
			ob_roomControl.isTalk = 7;
			sc_csBase2(ix, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 24:
			sc_csBase(csvHor, 10, sp_seon_face, ix, iy);
			break;
			
		case 25:
			sc_csBase(csvHor, 11, sp_chun_face_laugh, dx, dy);
			break;
			
		case 26:
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(ix, iy);
			alarm[1] = 120;
			break;
			
		case 27:
			sc_csBase(csvHor, 12, sp_seon_face, ix, iy);
			break;
			
		case 28:
			sc_csBase(csvHor, 13, sp_chun_face_silence, dx, dy);
			break;
			
		case 29:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 30;
			break;
			
		case 30:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}