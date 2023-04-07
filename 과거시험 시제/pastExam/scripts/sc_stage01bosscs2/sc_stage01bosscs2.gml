// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage01BossCs2(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 4 || state == 5) x = x - 3;
	
	var ii = 720;
	var iy = 540

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 180;
			isTalk = 5;
			break;
			
		case 1:
			sc_csBase(8, 1, sp_chun_face_laugh, 480, iy);
			break;
			
		case 2:
			sc_csBase(8, 2, sp_chun_face_smile, 480, iy);
			break;
			
		case 3:
			ob_roomControl.isTalk = 8;
			sc_csBase2(700, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 4:
			BGS_Play(s_foot, global.vol, 30);
			isTalk = 4;
			alarm[1] = 90;
			sprite_index = sp_pl_walk;
			image_xscale = -1;
			break;
			
		case 5:
			alarm[1] = 50;
			break;
		
		case 6:
			BGS_Set(0, 0);
			image_index = 0;
			sprite_index = sp_cs02_plSit;
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 7:
			sprite_index = sp_cs02_plSitDown;
			isTalk = 4;
			alarm[1] = 50;
			break;
		case 8:
			isTalk = 4;
			alarm[1] = 30;
			break
		
		case 9:
			isTalk = 4;
			alarm[1] = 120;
			break
		
		case 10:
			isTalk = 4;
			alarm[1] = 30;
			break
			
		case 11:
			ob_roomControl.isTalk = 8;
			sc_csBase2(1320, 520);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 12:
			sc_csBase(8, 3, sp_chun_face_silence, 1320, 520);
			break;
			
		case 13:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 90;
			break
			
		case 14:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}