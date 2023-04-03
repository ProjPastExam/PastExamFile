// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_dokBossAtk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	isDA = true;	isDK = false;	isDF = false;
	
	if (isJump) ySpeed += 0.5;
	
	var plX = sc_pl_get("x");
	if ( state == 10 ) {
		sprite_index = stand2Sp;
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			state = 11;
		}
		
	}
	else if ( state == 11 ){
		//if ( nextState == 20 )	sc_jpBossRdy();
		var disIndex1 = 600;
		var disIndex2 = 300;
		//if (nextState == 19) { disIndex1 = 1200;	disIndex2 = 0; }
		//if (nextState == 18) { disIndex1 = 800;		disIndex2 = 400; }
		sc_mobRun(12, disIndex1, disIndex2, 30, 12, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_dokBoss_atk1;
		xSpeed = 0;
		isDF = true;
		isCounter = 2;
		
		if (process == 84+lvDly) {
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		//if ( process == 1 ) { SE_Play(s_bandit01atk1, global.vol); }
		if ( process == 42+lvDly ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtkTrack);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_atk1Ef1;
			ob.life = 37;
			ob.ob = id;
		}
		
		if ( process == 126+lvDly ) { 
			SE_Play(s_jpBoss_atk1_2, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_atk1Ef2;
		}
		
		
		if ( process < 6 )				{ image_index = 0; }
		else if ( process < 12 )		{ image_index = 1; }
		else if ( process < 18 )		{ image_index = 2; }
		else if ( process < 24 )		{ image_index = 3; }
		else if ( process < 30 )		{ image_index = 4; }
		else if ( process < 42+lvDly )	{ image_index = 5; }
		else if ( process < 72+lvDly )	{ image_index = 6;	xSpeed = 32*dir; }
		else if ( process < 78+lvDly )	{ image_index = 7; }
		else if ( process < 84+lvDly )	{ image_index = 8; }
		else if ( process < 90+lvDly )	{ image_index = 9; }
		else if ( process < 96+lvDly )	{ image_index = 10 }
		else if ( process < 102+lvDly )	{ image_index = 11; }
		else if ( process < 108+lvDly )	{ image_index = 12; }
		else if ( process < 114+lvDly )	{ image_index = 13;xSpeed = 12*dir; }
		else if ( process < 126+lvDly )	{ image_index = 14 xSpeed = 24*dir; }
		else if ( process < 132+lvDly )	{ image_index = 15; }
		else if ( process < 138+lvDly )	{ image_index = 16; }
		else if ( process < 144+lvDly )	{ image_index = 17; }
		else if ( process < 164+lvDly )	{ image_index = 18; }
		else { state = 14;	delay = 50;	process = 0; isCounter = 0; }
	}
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_dokBoss_atk2;
		xSpeed = 0;
		isDF = true;
		isCounter = 2;
		
		//if ( process == 1 ) { SE_Play(s_bandit01atk1, global.vol); }
		if ( process == 40+lvDly ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_atk2Ef1;
		}
		
		if ( process == 96+lvDly ) { 
			SE_Play(s_jpBoss_atk1_2, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_atk2Ef2;
		}
		
		
		if ( process < 8 )				{ image_index = 0; }
		else if ( process < 16 )		{ image_index = 1; }
		else if ( process < 24 )		{ image_index = 2; }
		else if ( process < 32 )		{ image_index = 2; xSpeed = 15*dir; }
		else if ( process < 40+lvDly )	{ image_index = 3; }
		else if ( process < 48+lvDly )	{ image_index = 4; }
		else if ( process < 56+lvDly )	{ image_index = 5; }
		else if ( process < 64+lvDly )	{ image_index = 6; }
		else if ( process < 72+lvDly )	{ image_index = 7; }
		else if ( process < 80+lvDly )	{ image_index = 8;	xSpeed = 8*dir; }
		else if ( process < 88+lvDly )	{ image_index = 9;	xSpeed = 16*dir; }
		else if ( process < 96+lvDly )	{ image_index = 10; xSpeed = 24*dir; }
		else if ( process < 104+lvDly )	{ image_index = 11; }
		else if ( process < 112+lvDly )	{ image_index = 12; }
		else if ( process < 120+lvDly )	{ image_index = 13; }
		else if ( process < 150+lvDly )	{ image_index = 14; }
		else { state = 14;	delay = 50;	process = 0; isCounter = 0; }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_dokBoss_atk3;
		xSpeed = 0;
		isDK = true;
		
		if (process == 1) {
			if ( x > plX ) dir = -1;
			else dir = 1;
			//SE_Play(s_jp_dAtk, global.vol); 
		}
		
		if ( process == 48+lvDly ) { 
			SE_Play(s_jpBoss_atk2, global.vol);
			var ob = instance_create_layer(plX, y-200, "effect", ob_mobAtkRdy);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_atk3Ef1;
			ob.obCreate = ob_mobAtk2;
			ob.obSprite = sp_dokBoss_atk3Ef2;
		}
		
		if ( process < 6 )				{ image_index = 0; }
		else if ( process < 12 )		{ image_index = 1; }
		else if ( process < 18 )		{ image_index = 2; }
		else if ( process < 24 )		{ image_index = 3; }
		else if ( process < 30 )		{ image_index = 4; }
		else if ( process < 36 )		{ image_index = 5; }
		else if ( process < 42 )		{ image_index = 6; }
		else if ( process < 48+lvDly )	{ image_index = 7; }
		else if ( process < 54+lvDly )	{ image_index = 8; }
		else if ( process < 60+lvDly )	{ image_index = 9; }
		else if ( process < 66+lvDly )	{ image_index = 10; }
		else if ( process < 86+lvDly )	{ image_index = 11; }
		else { state = 10;	delay = 50;	process = 0; isCounter = 0; }
	}
	
	else if ( state == 15 ) {
		process++;
		sprite_index = sp_jpBoss_atkGRdy2;
		isDK = true;
		
		if ( process == 1 ) { 
			//SE_Play(s_jp_dAtk, global.vol); 
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if ( process == 12 ) { 
			SE_Play(s_jpBoss_rdy, global.vol);
		}
		
		isDK = true;	isDF = true;
		
		if ( process < 12 ) { image_index = 0; }
		else if ( process < 18 ) { image_index = 1; }
		else if ( process < 24 ) { image_index = 2; }
		else if ( process < 30 ) { image_index = 3; }
		else if ( process < 36 ) { image_index = 4; }
		else { state = 24;	process = 0;	delay = 0; }
	}

	
	else if ( state == 30 ) {
		process++;
		sprite_index = sp_dokBoss_backstep;
		
		isDK = true;	isDF = true;
		
		if (process == 1) {
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 16 ) { image_index = 1; xSpeed = dir*18*-1; }
		else if ( process < 26 ) { image_index = 2; xSpeed = dir*15*-1; }
		else if ( process < 30 ) { image_index = 3; }
		else if ( process < 34 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
	
	else if ( state == 31 ) {
		process++;
		sprite_index = sp_dokBoss_counter2;
		
		isDK = true;	isDF = true;
		
		if (process == 1) {
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 18 ) { image_index = 1; xSpeed = dir*20*-1; }
		else if ( process < 28 ) { image_index = 2; xSpeed = dir*16*-1; }
		else if ( process < 30 ) { image_index = 3; }
		else if ( process < 32 ) { image_index = 4; }
		else { sc_jpBossAtkNext();	process = 0;	delay = 0; }
	}
	
	else if ( state == 32 ) {
		process++;
		sprite_index = sp_dokBoss_counter2;
		
		isDK = true;	isDF = true;
		
		if (process == 65+lvDly) {
			//SE_Play(s_swing_a2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_counter2Ef;
		}
		
		
		if ( process < 5 ) { image_index = 0; xSpeed = dir*18*-1;}
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*15*-1; }
		else if ( process < 15 ) { image_index = 2; xSpeed = dir*12*-1; }
		else if ( process < 20 ) { image_index = 3; xSpeed = dir*9*-1;}
		else if ( process < 25 ) { image_index = 4; xSpeed = dir*6*-1;}
		else if ( process < 30 ) { image_index = 5; xSpeed = dir*3*-1;}
		else if ( process < 40+lvDly ) { image_index = 6; }
		else if ( process < 65+lvDly ) { image_index = 7; xSpeed = dir*15}
		else if ( process < 63+lvDly ) { image_index = 8; xSpeed = dir*10}
		else if ( process < 71+lvDly ) { image_index = 9; xSpeed = dir*5}
		else if ( process < 79+lvDly ) { image_index = 10; }
		else if ( process < 87+lvDly ) { image_index = 11; }
		else if ( process < 95+lvDly ) { image_index = 12; }
		else if ( process < 103+lvDly ) { image_index = 13; }
		else if ( process < 140+lvDly ) { image_index = 14; }
		else { state = 9;	process = 30;	delay = 0; }
	}
	
	else if ( state == 50 ) {
		process++;
		sprite_index = sp_jpBoss_jump;
		
		if ( process == 1 ) { 
			//SE_Play(s_jp_dAtk, global.vol); 
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if ( process == 20 ) { 
			ySpeed = -18;
		}
		
		isDK = true;	isDF = true;
		
		if ( process < 5 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; }
		else if ( process < 20 ) { image_index = 2; }
		else if ( process < 25 ) { image_index = 3; }
		else if ( process < 35 ) { image_index = 4; }
		else { state = 13;	process = 0;	delay = 0; }
	}
	
	else if ( state == 5 || state == 6 || state == 7 || state == 8 ) {
		if (isCounter > 0) {
			isStun = false;
			state = isCounter+30;
			isCounter = 0;
			process = 0;
		}
		if (kbIndex == 1) {
			sc_jpBossAtkNext(nextState);
			if (isStun) {
				isStun = false;
				state = 9;
				process = 80;
			}
			kbIndex = 0;
		}
	}
	
	else if ( state == 9 ) {
		if (process == 1) {
			sc_jpBossAtkNext(nextState);
		}
	}
}