// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_tutoChunCs1(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 0) y = y + 2;
	
	var ix = 1700;
	var iy = 480;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {
			
		case 0:
			alarm[1] = 300;
			isTalk = 5;
			break;
			
		case 1:
			var name = "????";
			var text = "......";
			sc_csBase(name, sp_chun_face, text, -50, -50);
			break;
			
		case 2:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 70;
			break;
		
		case 3:
			alarm[1] = 1;
			break;
			
		case 4:
			alarm[1] = 120;
			break;
			
		case 5:
			alarm[1] = 1;
			break;
			
		case 6:
			alarm[1] = 40;
			break;
			
		case 7:
			alarm[1] = 120;
			instance_create_layer(uc_get_x(), uc_get_y(), "effect", ob_whiteOut);
			break;
		
		case 8:
			ob_roomControl.alarm[7] = 1;
			break;
			
		/*
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
			break;
			
		case 7:
			uc_shake(5, 0.05);
			audio_play_sound(s_swing_c2, 1, false);
			alarm[1] = 80;
			break;
			
		case 8:
			audio_play_sound(s_dash01, 1, false);
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
			audio_play_sound(s_swing_c1, 1, false);
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
		*/
		}
	}
}