// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_ending2Cs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var vstX	= 1729;
	var vstY	= 360;
	
	var ppX		= 980;
	var ppY		= 660;
	
	var csvHor = 0;
	
	if (state == 19) {
		process++;
		x += 30;
		if ( process % 4 == 0 ) { 
			part_type_sprite(global.dashEf, sp_pl_dash, true, true, false);
			part_type_scale( global.dashEf, 1, 1 );
			part_particles_create( global.hitEf2, x, y, global.dashEf, 1 );
		}
	}
	else if (state == 20) {
		process++;
		if (process == 8) {
			with (instance_create_layer(x, y, "effect", ob_csEffect)) {
				sprite_index = sp_pl_atkEf03;
			}
			SE_Play(s_kick01, global.vol);
		}
		
		if (process == 35) {
			SE_Play(s_cloth2, global.vol);
		}
		
		if (process < 3)		{ image_index = 0; x += 14; }
		else if (process < 8)	{ image_index = 1; x += 16; }
		else if (process < 14)	{ image_index = 2; x += 12; }
		else if (process < 20)	{ image_index = 3; x += 8; }
		else if (process < 35)	{ image_index = 4; }
		else if (process < 40)	{ image_index = 5; }
		else if (process < 45)	{ image_index = 6; }
		else if (process < 50)	{ image_index = 7; }
		else if (process < 55)	{ image_index = 8; }
		else if (process < 60)	{ image_index = 9; }
		else if (process < 65)	{ image_index = 10; }
	}

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 210;
			isTalk = 4;
			break;
			 
		case 1:
			alarm[1] = 120;
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(vstX, vstY);
			break;
			
		case 2:
			BGM_Play(s_mB04_1, global.volBgm, 0);
			sc_csBase(csvHor, 1, sp_bst_face, vstX, vstY);
			break;
			
		case 3:
			sc_csBase(csvHor, 2, sp_cs01_face2, ppX, ppY);
			break;
			
		case 4:
			sc_csBase(csvHor, 3, sp_bst_face, vstX, vstY);
			break;
			
		case 5:
			sc_csBase(csvHor, 4, sp_bst_face, vstX, vstY);
			break;
			
		case 6:
			alarm[1] = 120;
			ob_roomControl.isTalk = 7;
			isTalk = 5;
			sc_csBase2(ppX, ppY);
			break;
		
		case 7:
			sc_csBase(csvHor, 5, sp_cs01_face2, ppX, ppY);
			break;
			
		case 8:
			sc_csBase(csvHor, 6, sp_bst_face, vstX, vstY);
			break;
			
		case 9:
			alarm[1] = 120;
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(vstX, vstY);
			BGM_Stop(120);
			break;
			
		case 10:
			sc_csBase(csvHor, 7, sp_bst_face, vstX, vstY);
			break;
			
		case 11:
			alarm[1] = 10;
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			uc_shake(3, 0.1);
			SE_Play(s_hitCritical, global.vol);
			break;
		
		case 12:
			alarm[1] = 30;
			uc_shake(3, 0.1);
			SE_Play(s_hitCritical, global.vol);
			break;
		
		case 13:
			alarm[1] = 10;
			uc_shake(6, 0.1);
			SE_Play(s_hitCritical, global.vol);
			SE_Play(s_bandit01die4, global.vol);
			break;
			
		case 14:
			alarm[1] = 120;
			ob_roomControl.isTalk = 7;
			isTalk = 5;
			sc_csBase2(vstX, vstY);
			break;
			
		case 15:
			sc_csBase(csvHor, 8, sp_bst_face, vstX, vstY);
			break;
			
		case 16:
			alarm[1] = 60;
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			uc_shake(6, 0.1);
			SE_Play(s_hitCritical, global.vol);
			SE_Play(s_bandit01die1, global.vol);
			break;
		
		case 17:
			alarm[1] = 10;
			uc_shake(3, 0.1);
			SE_Play(s_hitCritical, global.vol);
			break;
		
		case 18:
			alarm[1] = 120;
			uc_shake(6, 0.1);
			SE_Play(s_hitCritical, global.vol);
			SE_Play(s_bandit01die3, global.vol);
			break;
			
		case 19:
			alarm[1] = 12;
			sprite_index = sp_pl_dash;
			process = 0;
			SE_Play(s_dash01, global.vol);
			break;
			
		case 20:
			alarm[1] = 80;
			sprite_index = sp_ending2Pl;
			process = 0;
			break;
			
		case 21:
			sprite_index = sp_ending2Pl2;
			alarm[1] = 120;
			ob_roomControl.isTalk = 7;
			isTalk = 5;
			sc_csBase2(vstX, vstY);
			break;
			
		case 22:
			sc_csBase(csvHor, 9, sp_bst_face, vstX, vstY);
			break;
			/*
		case 23:
			alarm[1] = 120;
			ob_roomControl.isTalk = 8;
			isTalk = 4;
			sc_csBase2(x, 580);
			break;
			
		case 24:
			alarm[1] = 60;
			ob_roomControl.isTalk = 4;
			isTalk = 5;
			break;
			*/
		case 23:
			sc_csBase(csvHor, 10, sp_pl_faceEnd, x, 580);
			break;
			
		case 24:
			SE_Play(s_talk, global.vol);
			BGM_Play(s_mr03, global.volBgm, 0);
			instance_create_layer(0, 0, "effect", ob_endTitle);
			alarm[1] = 480;
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			break;
			
		case 25:
			ob_roomControl.alarm[7] = 1;
			break;
		}
	}
}