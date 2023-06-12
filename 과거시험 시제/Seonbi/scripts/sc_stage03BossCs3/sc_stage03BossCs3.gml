// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage03BossCs3(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	if (state == 2 && alarm[1] = 135) {
		uc_shake(10, 0.1);
		SE_Play(s_st3_boss3, global.vol);
	}
	
	if (state == 2 && alarm[1] = 45) {
		uc_shake(12, 0.1);
		SE_Play(s_st3_boss1, global.vol);
	}
	
	if (state == 4 && alarm[1] = 145) {
		uc_shake(12, 0.1);
		SE_Play(s_st3_boss2, global.vol);
	}
	
	if (state == 4 && alarm[1] = 25) {
		uc_shake(8, 0.1);
		SE_Play(s_st3_boss4, global.vol);
	}
	
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 30;
			isTalk = 4;
			break;
			
		case 1:
			alarm[1] = 30;
			sprite_index = sp_stage03BossCs2Cs1;
			image_index = 0;
			break;
			
		case 2:
			alarm[1] = 240;
			sprite_index = sp_stage03BossCs2Cs1;
			image_index = 0;
			break;
			
		case 3:
			alarm[1] = 120;
			sprite_index = sp_stage03BossCs2Cs2;
			image_index = 0;
			break;
			
		case 4:
			alarm[1] = 180;
			sprite_index = sp_stage03BossCs2Cs3;
			image_index = 0;
			break;
			
		case 5:
			alarm[1] = 120;
			sprite_index = sp_stage03BossCs2Cs4;
			image_index = 0;
			break;
			
		case 6:
			ob_roomControl.alarm[7] = 1;
			break;
			
		}
	}
}