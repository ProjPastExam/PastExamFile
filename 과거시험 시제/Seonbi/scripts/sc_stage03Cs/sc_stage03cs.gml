// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage03Cs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var hang1 = 1180;
	var hang2 = 410;
	
	var csvHor = 0;
	
	if (state == 1) x += 4;
	
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 30;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_foot, global.vol, 30);
			alarm[1] = 145;
			isTalk = 8;
			break;
			
		case 2:
			BGS_Set(0, 0);
			sprite_index = sp_pl_standPeace;
			alarm[1] = 120;
			isTalk = 4;
			sc_csBase2(x, 560);
			break;
			
		case 3:
			isTalk = 4;
			SE_Play(s_chun_reward, global.vol);
			alarm[1] = 60;
			break;
			
		case 4:
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 5:
			BGM_Play(s_mCs_normal, global.volBgm, 0);
			sc_csBase(csvHor, 1, sp_chun_face_silence, hang2, 520);
			break;
			
		case 6:
			image_xscale = -1;
			alarm[1] = 120;
			ob_roomControl.isTalk = 6;
			isTalk = 5;
			sc_csBase2(x, 560);
			break;
			
		case 7:
			sc_csBase(csvHor, 2, sp_chun_face_embar, hang2, 520);
			break;
			
		case 8:
			alarm[1] = 120;
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(x, 560);
			break;
			
		case 9:
			sc_csBase(csvHor, 3, sp_sold1_face, hang1, 540);
			break;
			
		case 10:
			image_xscale = 1;
			ob_roomControl.isTalk = 7;
			alarm[1] = 120;
			isTalk = 5;
			sc_csBase2(hang2, 520);
			break;
			
		case 11:
			sc_csBase(csvHor, 4, sp_sold1_face, hang1, 540);
			break;
			
		case 12:
			sc_csBase(csvHor, 5, sp_sold1_face, hang1, 540);
			break;
			
		case 13:
			sc_csBase(csvHor, 6, sp_sold1_face, hang1, 540);
			break;
			
		case 14:
			sc_csBase(csvHor, 7, sp_sold1_face, hang1, 540);
			break;
			
		case 15:
			ob_roomControl.isTalk = 4;
			alarm[1] = 120;
			isTalk = 4;
			break;
			
		case 16:
			ob_roomControl.alarm[7] = 1;
			break;
		}
	}
}