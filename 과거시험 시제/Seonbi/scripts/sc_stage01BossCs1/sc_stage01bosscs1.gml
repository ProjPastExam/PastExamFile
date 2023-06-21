// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage01BossCs1(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 4) x = x + 8;
	
	var ii = 1540;
	var iy = 520;
	
	var csvHor = 8;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 120;
			isTalk = 4;
			break;
			
		case 1:
			alarm[1] = 20;
			SE_Play(s_hit01, global.vol);
			SE_Play(s_bandit01die1, global.vol);
			
			uc_shake(8, 0.1);
			break;
			
		case 2:
			alarm[1] = 40;
			SE_Play(s_hit01, global.vol);
			SE_Play(s_bandit01die2, global.vol);
			
			uc_shake(8, 0.1);
			break;
			
		case 3:
			alarm[1] = 60;
			SE_Play(s_hit01, global.vol);
			//SE_Play(s_bandit01die3, global.vol);
			with (ob_mobBandit03) {
				hp = 0;
			}
			uc_shake(8, 0.1);
			break;
			
		case 4:
			BGS_Play(s_run, global.vol, 30);
			isTalk = 5;
			alarm[1] = 90;
			break;
			
		case 5:
			BGS_Set(0, 0);
			sprite_index = sp_pl_stand;
			sc_csBase(csvHor, 1, sp_banditBoss_face, -500, iy);
			uc_shake(10, 0.05);
			BGM_Play(s_mB01_1, global.volBgm, 0);
			break;
		
		case 6:
			ob_roomControl.isTalk = 7;
			sc_csBase2(540, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 7:
			isTalk = 4;
			BGS_Play(s_foot, global.vol, 30);
			alarm[1] = 130;
			break;
			
		case 8:
			isTalk = 5;
			BGS_Set(0, 0);
			alarm[1] = 60;
			break
		
		case 9:
			sc_csBase(csvHor, 2, sp_banditBoss_face, ii, iy);
			break;
		
		case 10:
			sc_csBase(csvHor, 3, sp_banditBoss_face, ii, iy);
			break;
			
		case 11:
			isTalk = 4;
			ob_roomControl.isTalk = 4;
			BGM_Stop(60);
			alarm[1] = 60;
			break;
			
		case 12:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}