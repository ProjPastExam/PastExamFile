// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage01Cs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var hang1 = 1088;
	var hang2 = 800;
	
	var csvHor = 0;
	
	if (state == 4) x += 9;
	else if (state == 5) {
		process++
		x += 30;
		if ( process % 4 == 0 ) { 
			part_type_sprite(global.dashEf, sp_pl_dash, true, true, false);
			part_type_scale( global.dashEf, 1, 1 );
			part_particles_create( global.hitEf2, x, y, global.dashEf, 1 );
		}
	}
	else if (state == 6) {
		process++;
		if (process == 8) {
			with (instance_create_layer(x, y, "effect", ob_csEffect)) {
				sprite_index = sp_pl_atkEf03;
			}
			SE_Play(s_kick01, global.vol);
		}
		
		if (process < 3)		{ image_index = 0; x += 14; }
		else if (process < 8)	{ image_index = 1; x += 16; }
		else if (process < 14)	{ image_index = 2; x += 12; }
		else if (process < 20)	{ image_index = 3; x += 8; }
		else if (process < 25)	{ image_index = 3; x += 4; }
	}
	else if (state == 7) {
		process++;
		if (process == 14) {
			with (instance_create_layer(x, y, "effect", ob_csEffect)) {
				sprite_index = sp_pl_atkEf02;
			}
			SE_Play(s_arrow02, global.vol);
		}
		
		else if (process < 7)	{ image_index = 1; }
		else if (process < 14)	{ image_index = 2; }
		else if (process < 21)	{ image_index = 3; }
		else if (process < 28)	{ image_index = 4; }
		else					{ image_index = 5; }
	}

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 210;
			isTalk = 5;
			break;
			
		case 1:
			BGM_Play(s_mB01_1, global.volBgm, 0);
			sc_csBase(csvHor, 1, sp_bandit_face, hang1, 580);
			uc_shake(8, 0.1);
			break;
			
		case 2:
			sc_csBase(csvHor, 2, sp_civil03Face, hang2, 580);
			break;
			
		case 3:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 30;
			break;
			
		case 4:
			sprite_index = sp_pl_run;
			alarm[1] = 40;
			break;
			
		case 5:
			alarm[1] = 18;
			sprite_index = sp_pl_dash;
			process = 0;
			SE_Play(s_dash01, global.vol);
			break;
			
		case 6:
			alarm[1] = 25;
			sprite_index = sp_pl_atkFront2;
			process = 0;
			break;
			
		case 7:
			alarm[1] = 50;
			sprite_index = sp_pl_atk2;
			process = 0;
			break;
			
		case 8:
			isTalk = 7;
			alarm[1] = 10;
			sprite_index = sp_pl_stand;
			break;
			
		case 9:
			isTalk = 5;
			sc_csBase2(hang2, 580);
			alarm[1] = 120;
			break;
			
		case 10:
			sprite_index = sp_pl_standPeace;
			image_xscale = -1;
			sc_csBase(csvHor, 3, sp_civil03Face, hang2, 580);
			break;
			
		case 11:
			ob_roomControl.isTalk = 4;
			alarm[1] = 20;
			isTalk = 4;
			break;
			
		case 12:
			alarm[1] = 60;
			isTalk = 5;
			break;
			
		case 13:
			sc_csBase(csvHor, 4, sp_civil01Face, 640, 580);
			break;
			
		case 14:
			ob_roomControl.isTalk = 4;
			alarm[1] = 150;
			isTalk = 8;
			break;
			
		case 15:
			alarm[1] = 120;
			isTalk = 4;
			sc_csBase2(x, 560);
			break;
			
		case 16:
			SE_Play(s_chun_reward, global.vol);
			alarm[1] = 56;
			break;
			
		case 17:
			isTalk = 5;
			image_xscale = 1;
			alarm[1] = 80;
			break;
			
		case 18:
			sc_csBase(csvHor, 5, sp_chun_face_silence, 1280, 560);
			break;
			
		case 19:
			sc_csBase(csvHor, 6, sp_chun_face_angry, 1280, 560);
			break;
			
		case 20:
			sc_csBase(csvHor, 7, sp_chun_face_angry, 1280, 560);
			break;
			
		case 21:
			sc_csBase(csvHor, 8, sp_chun_face_silence, 1280, 560);
			break;
			
		case 22:
			alarm[1] = 120;
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(1280, 560);
			break;
			
		case 23:
			sc_csBase(csvHor, 9, sp_chun_face_angry, 1280, 560);
			break;
			
		case 24:
			sc_csBase(csvHor, 10, sp_chun_face, 1280, 560);
			break;
			
		case 25:
			sc_csBase(csvHor, 11, sp_chun_face_smile, 1280, 560);
			break;
			
		case 26:
			alarm[1] = 90;
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			BGM_Stop(60);
			break;
			
		case 27:
			ob_roomControl.alarm[7] = 1;
			break;
		}
	}
}