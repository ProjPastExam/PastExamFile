// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_tutoBossCs1(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 5) x = x + 8;
	
	var csvHor = 16;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 160;
			isTalk = 4;
			break;
			
		case 1:
			alarm[1] = 10;
			uc_shake(6, 0.05);
			SE_Play(s_hit01, global.vol);
			break;
			
		case 2:
			alarm[1] = 30;
			uc_shake(6, 0.05);
			SE_Play(s_hit01, global.vol);
			break;
			
		case 3:
			alarm[1] = 8;
			isTalk = 4;
			jp = instance_create_layer(100, 1620, "Instances", ob_jpSword);
			
			jp.dir = -1;
			break;
			
		case 4:
			alarm[1] = 80;
			uc_shake(10, 0.05);
			SE_Play(s_hit01, global.vol);
			jp.ySpeed = -10;
			isTalk = 4;
			jp.hp = 0;
			break;
			
		case 5:
			BGS_Play(s_run, global.vol, 0);
			alarm[1] = 80;
			sprite_index = sp_pl_run;
			break;
			
		case 6:
			BGS_Set(0, 0);
			alarm[1] = 1;
			sprite_index = sp_pl_stand;
			isTalk = 5;
			break;
			
		case 7:
			sc_csBase(csvHor, 1, sp_jpMb_face, -50, -50);
			break;
			
		case 8:
			ob_roomControl.isTalk = 7;
			sc_csBase2(x-130, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 9:
			BGS_Play(s_foot, global.vol, 0);
			BGM_Play(s_mB01_2, global.volBgm, 60);
			alarm[1] = 210;
			isTalk = 4;
			break;
			
		case 10:
			BGS_Set(0, 0);
			alarm[1] = 60;
			isTalk = 4;
			break;
			
		case 11:
			alarm[1] = 36;
			isTalk = 4;
			break;
			
		case 12:
			alarm[1] = 60;
			uc_shake(10, 0.05);
			SE_Play(s_swing_a1, global.vol);
			isTalk = 4;
			break;
			
		case 13:
			alarm[1] = 150;
			isTalk = 4;
			break;
			
		case 14:
			ob_roomControl.alarm[7] = 1;
			break;
		}
	}
}