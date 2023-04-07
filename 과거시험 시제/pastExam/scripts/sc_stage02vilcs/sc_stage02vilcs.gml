// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage02VilCs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 1) x = x + 4;
	
	var ii = 220;
	var iy = 520

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 30;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_foot, global.vol, 30);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 2:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 560);
			sprite_index = sp_pl_standPeace;
			isTalk = 4;
			alarm[1] = 120;
			BGS_Set(0, 0);
			break;
			
		case 3:
			alarm[1] = 60;
			isTalk = 4;
			break;
			
		case 4:
			isTalk = 5;
			alarm[1] = 60;
			break;
			
		case 5:
			BGM_Play(s_mChun, global.volBgm, 0);
			sc_csBase(0, 1, sp_chun_face_smile, ii, iy);
			break;
		
		case 6:
			sc_csBase(0, 2, sp_chun_face, ii, iy);
			break;
			
		case 7:
			sc_csBase(0, 3, sp_chun_face_silence, ii, iy);
			break;
			
		case 8:
			sc_csBase(0, 4, sp_chun_face_angry, ii, iy);
			break;
		
		case 9:
			sc_csBase(0, 5, sp_chun_face_smile, ii, iy);
			break;
			
		case 10:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 11:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}