// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage02BossCs3(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var ii = 720;
	var iy = 500;
	
	var csvHor = 24;
	
	if (state == 4)	{ x += 5; }

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 150;
			isTalk = 5;
			break;
			
		case 1:
			sc_csBase(csvHor, 1, sp_chun_face_laugh, 890, iy);
			break;
			
		case 2:
			sc_csBase(csvHor, 2, sp_chun_face_smile, 890, iy);
			break;
			
		case 3:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 4:
			BGS_Play(s_foot, global.vol, 0);
			sprite_index = sp_pl_walk;
			image_xscale = 1;
			isTalk = 4;
			alarm[1] = 230;
			break;
			
		case 5:
			BGS_Set(0, 0);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 6:
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 7:
			ob_roomControl.isTalk = 8;
			sc_csBase2(770, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 8:
			BGM_Play(s_mCs_normal, global.volBgm, 0);
			sc_csBase(csvHor, 3, sp_st02Cs_kim_face, 770, iy);
			break;
			
		case 9:
			sc_csBase(csvHor, 4, sp_st02Cs_kim_face, 770, iy);
			break;
			
		case 10:
			ob_roomControl.isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 11:
			ob_roomControl.alarm[7] = 1;
			break;
			
		/*
		case 10:
			sc_csBase(12, 5, sp_st02Cs_kim_face, 770, iy);
			break;
			
		case 11:
			sc_csBase(12, 6, sp_st02Cs_kim_face, 770, iy);
			break;
			
		case 12:
			ob_roomControl.isTalk = 8;
			sc_csBase2(770, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 13:
			sc_csBase(12, 7, sp_st02Cs_kim_face, 770, iy);
			break;
			
		case 14:
			sc_csBase(12, 8, sp_st02Cs_kim_face, 770, iy);
			break;
			
		case 15:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 16:
			ob_roomControl.isTalk = 8;
			sc_csBase2(510, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 17:
			sc_csBase(12, 9, sp_reaper_face, 510, iy);
			break;
			
		case 18:
			sc_csBase(12, 10, sp_reaper_face, 510, iy);
			break;
			
		case 19:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 20:
			ob_roomControl.alarm[7] = 1;
			break;
			
		*/
		
		}
	}
}