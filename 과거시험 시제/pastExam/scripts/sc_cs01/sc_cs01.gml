// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_cs01(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 13 ) {
		if (alarm[1] == 148) SE_Play(s_cloth1, global.vol);
		if (alarm[1] == 80) SE_Play(s_cloth2, global.vol);
	}
	if (state == 15 || state == 14) x = x + 3;
	
	var jumo = 992;
	var hang1 = 505;
	var hang2 = 775;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 350;
			isTalk = 5;
			break;
			
		case 1:
			BGM_Play(s_mCs_normal, global.volBgm, 0);
			sc_csBase(0, 1, sp_cs01_face1, hang1, 530);
			break;
			
		case 2:
			sc_csBase(0, 2, sp_cs01_face2, hang2, 540);
			break;
			
		case 3:
			ob_roomControl.isTalk = 7;
			sc_csBase2(jumo, 580);
			isTalk = 5;
			alarm[1] = 150;
			break;
			
		case 4:
			sc_csBase(0, 3, sp_jumo_face, jumo, 580);
			break;
			
		case 5:
			ob_roomControl.isTalk = 6;
			isTalk = 5;
			sc_csBase2(hang2, 540);
			alarm[1] = 150;
			break;
		
		case 6:
			sc_csBase(0, 4, sp_cs01_face2, hang2, 540);
			break;
		
		case 7:
			sc_csBase(0, 5, sp_jumo_face, jumo, 580);
			break;
			
		case 8:
			sc_csBase(0, 6, sp_jumo_face, jumo, 580);
			break;
			
		case 9:
			sc_csBase(0, 7, sp_jumo_face, jumo, 580);
			break;
			
		case 10:
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(hang1, 530);
			alarm[1] = 150;
			break;
		
		case 11:
			sc_csBase(0, 8, sp_cs01_face1, hang1, 530);
			break;
			
		case 12:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 90;
			break;
			
		case 13:
			alarm[1] = 150;
			image_index = 0;
			sprite_index = sp_cs1_pl2;
			
			break;
		
		case 14:
			alarm[1] = 120;
			sprite_index = sp_pl_walk;
			BGS_Play(s_foot, global.vol, 0);
			break;
			
		case 15:
			ob_roomControl.alarm[7] = 1;
			BGS_Set(0, 30);
			break;
		}
	}
}