// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage05Cs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 1) x = x + 4;
	
	var ii = 220;
	var iy = 520;
	
	var csvHor = 8;
	
	if (state == 11) {
		sprite_index = sp_pl_dash;
		process++
		x += 30;
		if ( process % 4 == 0 ) { 
			part_type_sprite(global.dashEf, sp_pl_dash, true, true, false);
			part_type_scale( global.dashEf, 1, 1 );
			part_particles_create( global.hitEf2, x, y, global.dashEf, 1 );
		}
	}
	else if (state == 12) {
		sprite_index = sp_pl_atkFront2;
		process++;
		if (process == 8) {
			sc_pl_atkEf(20, sc_pl_kickPene(), sc_pl_kickShock()+30, 0, 
				0, 1, 0, sp_pl_atkEf03, 1);
			SE_Play(s_kick01, global.vol);
		}
		
		if (process < 3)		{ image_index = 0; x += 14; }
		else if (process < 8)	{ image_index = 1; x += 16; }
		else if (process < 14)	{ image_index = 2; x += 12; }
		else if (process < 20)	{ image_index = 3; x += 8; }
		else if (process < 25)	{ image_index = 3; x += 4; }
	}
	else if (state == 13) {
		sprite_index = sp_pl_atk2;
		process++;
		if (process == 14) {
			sc_pl_atkEf(25, sc_pl_atkPene(), sc_pl_atkShock()*1.2, 0, 
				0, 0, 0, sp_pl_atkEf02, 1);
			SE_Play(s_arrow02, global.vol);
		}
		
		else if (process < 7)	{ image_index = 1; }
		else if (process < 14)	{ image_index = 2; }
		else if (process < 21)	{ image_index = 3; }
		else if (process < 28)	{ image_index = 4; }
		else					{ image_index = 5; }
	}

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 30;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_foot, global.vol, 30);
			isTalk = 4;
			alarm[1] = 130;
			break;
			
		case 2:
			alarm[1] = 60;
			isTalk = 4;
			sprite_index = sp_pl_standPeace;
			BGS_Set(0, 0);
			break;
			
		case 3:
			ob_roomControl.isTalk = 4;
			alarm[1] = 60;
			SE_Play(s_chun_reward, global.vol);
			isTalk = 4;
			break;
			
		case 4:
			alarm[1] = 60;
			break;
			
		case 5:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
		
		case 6:
			//BGM_Play(s_mCs_normal, global.volBgm, 0);
			sc_csBase(csvHor, 1, sp_chun_face_angry, ii, iy);
			break;
			
		case 7:
			ob_roomControl.isTalk = 4;
			alarm[1] = 180;
			isTalk = 4;
			break;
			
		case 8:
			alarm[1] = 180;
			isTalk = 4;
			sprite_index = sp_pl_stand;
			
			layer_set_visible("Assets_2", true);
			layer_set_visible("Tiles_3", true);
			layer_set_visible("Tiles_4", true);
			layer_set_visible("Backgrounds_2", true);
			layer_set_visible("Backgrounds_3", true);
			
			layer_set_visible("Assets_1", false);
			layer_set_visible("Tiles_1", false);
			layer_set_visible("Tiles_2", false);
			layer_set_visible("Background2", false);
			layer_set_visible("Background3", false);
			
			instance_create_layer(1000, 1450, "Instances", ob_guBandit02);
			instance_create_layer(1100, 1450, "Instances", ob_gujpGun);
			instance_create_layer(1200, 1450, "Instances", ob_guchang02);
			
			with (ob_mobBase)
			{
				hpFull	= 20;
				hp		= 20;
				state	= 10;
				delay	= 50000
				dir		= -1;
				patrol	= false;
			}
			break;
		
		case 9:
			ob_roomControl.isTalk = 7;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 10:
			sc_csBase(csvHor, 2, sp_chun_face_angry, ii, iy);
			break;
			
		case 11:
			process = 0;
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 7;
			break;
			
		case 12:
			process = 0;
			alarm[1] = 25;
			break;
			
		case 13:
			process = 0;
			alarm[1] = 50;
			break;
			
		case 14:
			sprite_index = sp_pl_stand;
			isTalk = 5;
			alarm[1] = 80;
			break;
			
		case 15:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 16:
			BGM_Play(s_mr05, global.volBgm, 0);
			sc_csBase(csvHor, 3, sp_chun_face_angry, ii, iy);
			break;
			
		case 17:
			sc_csBase(csvHor, 4, sp_chun_face_angry, ii, iy);
			break;
			
		case 18:
			sc_csBase(csvHor, 5, sp_chun_face_angry, ii, iy);
			break;
			
		case 19:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 30;
			break;
			
		case 20:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}