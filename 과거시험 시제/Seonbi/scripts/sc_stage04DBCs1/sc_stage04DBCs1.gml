// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage04DBCs1(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 12) x = x + 8;
	
	var ii = 620;
	var iy = 680;
	
	var dx = 384;
	var dy = 580;
	
	var sx = 1485;
	var sy = 500;
	
	var csvHor = 16

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 90;
			isTalk = 4;
			break;
			
		case 1:
			ob_roomControl.isTalk = 8;
			sc_csBase2(sx, sy);
			alarm[1] = 120;
			break;
			
		case 2:
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(sx, sy);
			alarm[1] = 120;
			break;
			
		case 3:
			BGM_Play(s_mB04_1, global.volBgm, 0);
			sc_csBase(csvHor, 1, sp_dokBoss_face, sx, sy);
			break;
			
		case 4:
			sc_csBase(csvHor, 2, sp_child2_face, ii, iy);
			break;
			
		case 5:
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(sx, sy);
			alarm[1] = 120;
			break;
		
		case 6:
			sc_csBase(csvHor, 3, sp_dokBoss_face, sx, sy);
			isTalk = 4;
			break;
			
		case 7:
			ob_roomControl.isTalk = 8;
			sc_csBase2(dx, dy);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 8:
			BGS_Play(s_foot, global.vol, 0);
			alarm[1] = 120;
			break;
		
		case 9:
			BGS_Set(0, 0)
			alarm[1] = 90;
			isTalk = 6;
			uc_shake(10, 0.2);
			SE_Play(s_hitCritical, global.vol);
			break;
			
		case 10:
			isTalk = 5;
			sc_csBase2(sx, sy);
			alarm[1] = 120;
			break;
			
		case 11:
			sc_csBase(csvHor, 4, sp_dokBoss_face, sx, sy);
			break;
			
		case 12:
			BGS_Play(s_run, global.vol, 0);
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 115;
			break;
			
		case 13:
			BGS_Set(0, 0);
			ob_roomControl.isTalk = 7;
			isTalk = 5;
			sc_csBase2(ii, iy);
			sprite_index = sp_pl_stand;
			alarm[1] = 120;
			break;
			
		case 14:
			sc_csBase(csvHor, 5, sp_child2_face, ii, iy);
			break;
			
		case 15:
			BGS_Play(s_run, global.vol, 0);
			ob_roomControl.isTalk = 4;
			isTalk = 5;
			alarm[1] = 150;
			break;
			
		case 16:
			BGS_Set(0, 60);
			ob_roomControl.isTalk = 8;
			sc_csBase2(sx, sy);
			isTalk = 5;
			BGM_Stop(120);
			alarm[1] = 120;
			break;
			
		case 17:
			sc_csBase(csvHor, 6, sp_dokBoss_face, sx, sy);
			break;
			
		case 18:
			SE_Play(s_dokBossCs, global.vol);
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 210;
			break;
			
		case 19:
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 20:
			ob_roomControl.isTalk = 8;
			sc_csBase2(sx-30, sy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 21:
			sc_csBase(csvHor, 7, sp_dokBoss_face2, sx-30, sy);
			BGM_Play(s_mB04_2, global.volBgm, 0);
			break;
			
		case 22:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 23:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}