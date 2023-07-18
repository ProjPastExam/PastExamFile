// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage06BossCs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 1) x = x + 8;
	
	var ii = 220;
	var iy = 520;
	
	var sx = 1248;
	var sy = 520;
	
	var csvHor = 16;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 30;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_run, global.vol, 30);
			isTalk = 4;
			alarm[1] = 130;
			break;
			
		case 2:
			alarm[1] = 60;
			isTalk = 4;
			sprite_index = sp_pl_stand;
			BGS_Set(0, 0);
			break;
			
		case 3:
			ob_roomControl.isTalk = 8;
			sc_csBase2(sx, sy);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 4:
			alarm[1] = 60;
			break;
			
		case 5:
			sc_csBase(csvHor, 1, sp_sin1_face, sx, sy);
			break;
		
		case 6:
			ob_roomControl.isTalk = 8;
			sc_csBase2(sx, sy);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 7:
			alarm[1] = 60;
			break;
			
		case 8:
			BGM_Play(s_mB06_2, global.volBgm, 0);
			sc_csBase(csvHor, 2, sp_sin1_face, sx, sy);
			break;
			
		case 9:
			sc_csBase(csvHor, 3, sp_sin1_face, sx, sy);
			break;
			
		case 10:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 30;
			break;
			
		case 11:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}