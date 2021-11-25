// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_tutoBossCs1(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 3) x = x + 8;
	
	var ii = 720;
	var iy = 640
	
	if (((isT == 4 || isT == 6 || isT == 7) && active == true) || isT == 5) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 160;
			isTalk = 4;
			break;
			
		case 1:
			alarm[1] = 8;
			isTalk = 4;
			jp = instance_create_layer(100, 1620, "Instances", ob_jpSword);
			
			jp.dir = -1;
			break;
			
		case 2:
			alarm[1] = 80;
			uc_shake(10, 0.05);
			audio_play_sound(s_hit01, 1, false);
			jp.ySpeed = -10;
			isTalk = 4;
			jp.hp = 0;
			break;
			
		case 3:
			alarm[1] = 80;
			sprite_index = sp_pl_run;
			break;
			
		case 4:
			alarm[1] = 120;
			sprite_index = sp_pl_stand;
			isTalk = 5;
			break;
			
		case 5:
			var name = "????";
			var text = "????";
			sc_csBase(name, sp_npc_blank, text, -50, -50);
			break;
			
		case 6:
			ob_roomControl.isTalk = 7;
			sc_csBase2(x-130, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 7:
			alarm[1] = 210;
			isTalk = 4;
			break;
			
		case 8:
			alarm[1] = 160;
			isTalk = 4;
			break;
			
		case 9:
			ob_roomControl.alarm[7] = 1;
			break;
		}
	}
}