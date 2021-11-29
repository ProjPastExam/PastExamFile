// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_tutoBossCs2(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 12) x = x - 10;
	if (state == 13) x = x - 10;
	if (state == 14) x = x - 8;
	if (state == 15) x = x - 6;
	if (state == 16) x = x - 4;
	if (state == 17) x = x - 2;
	
	var ix = 1700;
	var iy = 480;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 160;
			isTalk = 8;
			break;
			
		case 1:
			alarm[1] = 160;
			sc_csBase2(x, 560);
			isTalk = 4;
			break;
		
		case 2:
			alarm[1] = 30;
			isTalk = 5;
			break;
			
		case 3:
			audio_play_sound(s_talk, 2, false);
			var name = "????";
			var text = "......";
			sc_csBase(name, sp_npc_blank, text, -50, -50);
			break;
			
		case 4:
			isTalk = 5;
			ob_roomControl.isTalk = 4;
			sprite_index = sp_pl_stand;
			alarm[1] = 160;
			audio_play_sound(s_thun, 1, false);
			uc_shake(15, 0.05);
			instance_create_layer(uc_get_x(), uc_get_y(), "effect", ob_whiteIn);
			break;
		
		case 5:
			audio_play_sound(s_talk, 2, false);
			var name = "사무라이";
			var text = "......";
			sc_csBase(name, sp_npc_blank, text, ix, iy);
			break;
			
		case 6:
			isTalk = 4;
			ob_roomControl.isTalk = 4;
			alarm[1] = 20;
			audio_play_sound(s_dash01, 1, false);
			break;
			
		case 7:
			uc_shake(5, 0.05);
			audio_play_sound(s_swing_c2, 1, false);
			alarm[1] = 80;
			break;
			
		case 8:
			alarm[1] = 18;
			break;
			
		case 9:
			alarm[1] = 5;
			break;
			
		case 10:
			alarm[1] = 5;
			break;
			
		case 11:
			alarm[1] = 5;
			uc_shake(10, 0.05);
			audio_play_sound(s_plHit, 1, false);
			part_particles_create( global.hitEf, x, y, global.hitEf04T, 1 );
			sprite_index = sp_pl_die;
			image_index = 0;
			break;
			
		case 12:
			alarm[1] = 5;
			image_index = 0;
			break;
			
		case 13:
			alarm[1] = 10;
			image_index = 1;
			break;
			
		case 14:
			alarm[1] = 10;
			image_index = 2;
			break;
			
		case 15:
			alarm[1] = 10;
			image_index = 3;
			break;
			
		case 16:
			alarm[1] = 10;
			image_index = 4;
			break;
			
		case 17:
			alarm[1] = 10;
			image_index = 5;
			break;
			
		case 18:
			alarm[1] = 30;
			image_index = 6;
			break;
			
		case 19:
			ob_roomControl.alarm[7] = 1;
			break;
		
			/*
		case 0:
			alarm[1] = 160;
			isTalk = 4;
			break;
			
		case 1:
			alarm[1] = 10;
			uc_shake(6, 0.05);
			audio_play_sound(s_hit01, 1, false);
			break;
			
		case 2:
			alarm[1] = 30;
			uc_shake(6, 0.05);
			audio_play_sound(s_hit01, 1, false);
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
			audio_play_sound(s_hit01, 1, false);
			jp.ySpeed = -10;
			isTalk = 4;
			jp.hp = 0;
			break;
			
		case 5:
			alarm[1] = 80;
			sprite_index = sp_pl_run;
			break;
			
		case 6:
			alarm[1] = 1;
			sprite_index = sp_pl_stand;
			isTalk = 5;
			break;
			
		case 7:
			var name = "????";
			var text = "거기까지다!";
			sc_csBase(name, sp_npc_blank, text, -50, -50);
			break;
			
		case 8:
			ob_roomControl.isTalk = 7;
			sc_csBase2(x-130, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 9:
			alarm[1] = 210;
			isTalk = 4;
			break;
			
		case 10:
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
			audio_play_sound(s_swing_a1, 1, false);
			isTalk = 4;
			break;
			
		case 13:
			alarm[1] = 150;
			isTalk = 4;
			break;
			
		case 14:
			ob_roomControl.alarm[7] = 1;
			break;
			*/
		}
	}
}