// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage01BossCs3(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 12 || state == 13) x = x + 3;
	
	var ii = 720;
	var iy = 540;

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 180;
			isTalk = 4;
			break;
			
		case 1:
			ob_roomControl.isTalk = 8;
			sc_csBase2(1450, 520);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 2:
			sc_csBase(12, 1, sp_chun_face_angry, 1450, 520);
			break;
			
		case 3:
			ob_roomControl.isTalk = 6;
			sc_csBase2(1200, 560);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 4:
			sc_csBase(12, 2, sp_chun_face_silence, 1450, 520);
			break;
			
		case 5:
			sc_csBase(12, 3, sp_chun_face_smile, 1450, 520);
			break;
		
		case 6:
			sc_csBase(12, 4, sp_chun_face_angry, 1450, 520);
			break;
			
		case 7:
			sc_csBase(12, 5, sp_chun_face_silence, 1450, 520);
			break;
		case 8:
			ob_roomControl.isTalk = 8;
			sc_csBase2(1200, 560);
			isTalk = 4;
			alarm[1] = 120;
			break
		
		case 9:
			isTalk = 4;
			alarm[1] = 30;
			break
		
		case 10:
			image_index = 0;
			sprite_index = sp_cs02_plStand;
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 11:
			image_index = 0;
			sprite_index = sp_pl_standPeace;
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 12:
			BGS_Play(s_foot, global.vol, 0);
			sprite_index = sp_pl_walk;
			isTalk = 4;
			alarm[1] = 90;
			image_xscale = 1;
			break;
			
		case 13:
			isTalk = 4;
			alarm[1] = 120;
			break
			
		case 14:
			BGS_Set(0, 120);
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}