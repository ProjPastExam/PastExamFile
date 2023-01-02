// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage03BossCs1(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var jumo = 992;
	var hang1 = 505;
	var hang2 = 775;
	
	if (state == 2)		{ x += 8; }
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 90;
			isTalk = 4;
			break;
			
		case 1:
			//BGM_Play(s_mB01_2, global.volBgm, 0);
			alarm[1] = 200;
			isTalk = 4;
			break;
			
		case 2:
			BGS_Play(s_run, global.vol, 0);
			alarm[1] = 100;
			isTalk = 4;
			break;
			
		case 3:
			BGS_Set(0, 0);
			sprite_index = sp_pl_stand;
			ob_roomControl.isTalk = 7;
			sc_csBase2(390, 580);
			isTalk = 5;
			alarm[1] = 150;
			break;
			
		case 4:
			BGM_Play(s_mB03_1, global.volBgm, 0);
			var name = "악령"
			var text = "불청객이로군...";
			sc_csBase(name, sp_cB_face, text, -500, 540);
			break;
			
		case 5:
			ob_roomControl.isTalk = 4;
			alarm[1] = 300;
			SE_Play(s_cB1_atkG, global.vol);
			SE_Play(s_st3_bossa1, global.vol);
			isTalk = 4;
			break;
			
		case 6:
			alarm[1] = 250;
			isTalk = 4;
			break;
			
		case 7:
			ob_roomControl.alarm[7] = 1;
			BGS_Set(0, 30);
			BGM_Stop(30);
			break;
		}
	}
}