// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_jpBossatk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	isDA = true;	isDK = false;	isDF = false;
	
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
		sc_mobRun(12, 600, 300, 30, 20, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_jpBoss_atk1;
		xSpeed = 0;
		isDF = true;
		isCounter = true;
		
		//if ( process == 1 ) { SE_Play(s_bandit01atk1, global.vol); }
		if ( process == 45 + phaseDelay ) { 
			SE_Play(s_bandit01atk2, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_atk1Ef1;
		}
		
		if ( process == 75 + phaseDelay ) { 
			SE_Play(s_bandit01atk2, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_atk1Ef1;
		}
		
		
		if ( process < 25 + phaseDelay ) { image_index = 0; }
		else if ( process < 35 + phaseDelay ) { image_index = 1; xSpeed = dir*25; }
		else if ( process < 45 + phaseDelay ) { image_index = 2; xSpeed = dir*25; }
		else if ( process < 55 + phaseDelay ) { image_index = 3; }
		else if ( process < 60 + phaseDelay ) { image_index = 4; }
		else if ( process < 65 + phaseDelay ) { image_index = 5; xSpeed = dir*25; }
		else if ( process < 75 + phaseDelay ) { image_index = 6; xSpeed = dir*25; }
		else if ( process < 85 + phaseDelay ) { image_index = 7; }
		else if ( process < 90 + phaseDelay ) { image_index = 8; }
		else if ( process < 105 + phaseDelay * 2 ) { image_index = 9; }
		else { state = 15;	process = 0;	delay = random_range(100, 150); isCounter = false; }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_jpBoss_atk2;
		xSpeed = 0;
		
		
		if ( process == 1 ) { 
			//SE_Play(s_jp_dAtk, global.vol); 
		}
		
		if ( process == 55 ) { 
			SE_Play(s_swing_a1, global.vol);
			//audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_atk2Ef;
		}
		
		if (process > 55 && isJump) {
			xSpeed = 5 * dir;
		}
		
		if ( process < 5 ) { image_index = 0;	ySpeed = 0; }
		else if ( process < 45 ) { 
			ySpeed = 0;
			xSpeed = dir * 30;	image_index = 1;
			var disIndex = dir*(plX-x);
			if (disIndex < 250 && disIndex > 0 && process > 28) { process = 45; }
		}
		else if ( process < 50 ) { image_index = 2; xSpeed = 20*dir;	ySpeed = 0; }
		else if ( process < 55 ) { image_index = 3; xSpeed = 10*dir;	ySpeed = 0; }
		else if ( process < 60 ) { image_index = 4;	ySpeed = 0; }
		else if ( process < 65 ) { image_index = 5;	ySpeed = 0; }
		else if ( process < 95 ) { image_index = 6; }
		else { state = 10;	process = 0;	delay = random_range(60, 80); }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_jpBoss_atk_rdy2;
		
		if ( process == 1 ) { 
			//SE_Play(s_jp_dAtk, global.vol); 
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		isDK = true;	isDF = true;
		
		if ( process < 12 ) { image_index = 0; }
		else if ( process < 18 ) { image_index = 1; }
		else if ( process < 24 ) { image_index = 2; }
		else if ( process < 30 ) { image_index = 3; }
		else if ( process < 36 ) { image_index = 4; }
		else { state = 13;	process = 0;	delay = 0; }
	}
	
	else if ( state == 15 ) {
		process++;
		sprite_index = sp_jpBoss_atkGRdy2;
		
		if ( process == 1 ) { 
			//SE_Play(s_jp_dAtk, global.vol); 
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		isDK = true;	isDF = true;
		
		if ( process < 12 ) { image_index = 0; }
		else if ( process < 18 ) { image_index = 1; }
		else if ( process < 24 ) { image_index = 2; }
		else if ( process < 30 ) { image_index = 3; }
		else if ( process < 36 ) { image_index = 4; }
		else { state = 24;	process = 0;	delay = 0; }
	}
	
	else if (state == 16) {
		process++;
		sprite_index = sp_jpBoss_counter;
		
		if ( process == 24 ) { SE_Play(s_jp_dAtk, global.vol); }
		
		if ( process == 54 ) { 
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_counterEf;
		}
		
		isDK = true;
		if ( process < 24 ) { image_index = 0; xSpeed = dir * (process-30)/1.5; }
		else if ( process < 30 ) { image_index = 1; xSpeed = dir * (process-30)/1.5; }
		else if ( process < 48 ) { image_index = 2; }
		else if ( process < 54 ) { image_index = 2; xSpeed = 12 * dir; }
		else if ( process < 60 ) { image_index = 3; xSpeed = 24 * dir; }
		else if ( process < 66 ) { image_index = 3; xSpeed = 12 * dir; }
		else if ( process < 78 ) { image_index = 4; }
		else { state = 9;	process = 80;	delay = 0; }
		
	}
	
	else if ( state == 20 ) {
		process++;
		sprite_index = sp_jpBoss_atk_rdy;
		
		if ( process < 5 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; }
		else if ( process < 15 ) { image_index = 2; }
		else if ( process < 20 ) { image_index = 3; }
		else if ( process < 25 ) { image_index = 4; }
		else if ( process < 30 ) { image_index = 5; }
		else if ( process < 35 ) { image_index = 6; }
		else if ( process < 40 ) { image_index = 7; }
		else if ( process < 45 ) { image_index = 8; }
		else if ( process < 50 ) { image_index = 9; }
		else if ( process < 55 ) { image_index = 10; }
		else { state = 21;	process = 0;	delay = 0; }
	}
	
	else if ( state == 21 ) {
		process++;
		sprite_index = sp_jpBoss_atkGRdy;
		
		if ( process < 5 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; }
		else if ( process < 15 ) { image_index = 2; }
		else if ( process < 25 ) { image_index = 3; }
		else if ( process < 30 ) { image_index = 4; }
		else if ( process < 35 ) { image_index = 5; }
		else if ( process < 40 ) { image_index = 6; }
		else if ( process < 45 ) { image_index = 7; }
		else { state = 22;	process = 0;	delay = 0; }
	}
	
	else if ( state == 22 ) {
		process++;
		sprite_index = sp_jpBoss_atkG;
		
		if ( process == 10 ) { 
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y+175, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_atkGEf;
			ob.xSpeed		= 35 * dir;
			ob.life			= 240;
		}
		
		if ( process < 5 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; }
		else if ( process < 15 ) { image_index = 2; }
		else if ( process < 20 ) { image_index = 3; }
		else if ( process < 25 ) { image_index = 4; }
		else { state = 24;	process = 12;	delay = 0; }
	}
	
	else if ( state == 23 ) {
		process++;
		sprite_index = sp_jpBoss_atkG;
		
		if ( process == 10 ) { 
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y+175, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_atkGEf;
			ob.xSpeed		= 35 * dir;
			ob.life			= 240;
		}
		
		if ( process < 5 ) { image_index = 4; }
		else if ( process < 10 ) { image_index = 5; }
		else if ( process < 15 ) { image_index = 6; }
		else if ( process < 20 ) { image_index = 7; }
		else if ( process < 25 ) { image_index = 8; }
		else if ( process < 50 ) { image_index = 9; }
		else { state = 10;	process = 0;	delay = 0; }
	}
	
	else if ( state == 24 ) {
		process++;
		sprite_index = sp_jpBoss_atkGUp;
		
		if ( process == 30 ) { 
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y-50, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_atkGEf;
			ob.xSpeed		= 35 * dir;
			ob.life			= 240;
		}
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; }
		else if ( process < 18 ) { image_index = 2; }
		else if ( process < 24 ) { image_index = 3; }
		else if ( process < 30 ) { image_index = 4; }
		else if ( process < 36 ) { image_index = 5; }
		else if ( process < 42 ) { image_index = 6; }
		else if ( process < 48 ) { image_index = 7; }
		else if ( process < 54 ) { image_index = 8; }
		else if ( process < 60 ) { image_index = 9; }
		else if ( process < 90 ) { image_index = 10; }
		else { state = 10;	process = 0;	delay = 0; }
	}
	
	else if ( state == 25 ) {
		process++;
		sprite_index = sp_jpBoss_atk_FP;
		
		if ( process < 5 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; }
		else if ( process < 15 ) { image_index = 2; }
		else if ( process < 20 ) { image_index = 3; }
		else if ( process < 25 ) { image_index = 4; }
		else if ( process < 35 ) { image_index = 5; }
		else if ( process < 40 ) { image_index = 6; }
		else if ( process < 45 ) { image_index = 7; }
		else if ( process < 50 ) { image_index = 8; }
		else if ( process < 56 ) { image_index = 9; }
		else if ( process < 62 ) { image_index = 10; }
		else if ( process < 68 ) { image_index = 8; }
		else if ( process < 74 ) { image_index = 9; }
		else if ( process < 80 ) { image_index = 10; }
		else if ( process < 86 ) { image_index = 11; }
		else if ( process < 92 ) { image_index = 12; }
		else if ( process < 98 ) { image_index = 13; }
		else if ( process < 104 ) { image_index = 14; }
		else if ( process < 110 ) { image_index = 15; }
		else if ( process < 116 ) { image_index = 16; }
		else if ( process < 122 ) { image_index = 17; }
		else if ( process < 128 ) { image_index = 18; }
		else if ( process < 134 ) { image_index = 19; }
		else if ( process < 145 ) { image_index = 20; }
		else if ( process < 151 ) { image_index = 21; }
		else if ( process < 157 ) { image_index = 22; }
		else if ( process < 163 ) { image_index = 23; }
		else if ( process < 185 ) { image_index = 24; }
		else { state = 10;	process = 0;	delay = 100; }
	}
	
	
	
	else if ( state == 30 ) {
		process++;
		sprite_index = sp_jpBoss_backstep;
		
		isDK = true;	isDF = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 18 ) { image_index = 1; xSpeed = dir*18*-1; }
		else if ( process < 28 ) { image_index = 2; xSpeed = dir*15*-1; }
		else if ( process < 34 ) { image_index = 3; }
		else if ( process < 40 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
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
		if (isCounter) {
			isCounter = false;
			isStun = false;
			state = 16;
			process = 0;
		}
		else if (process == 1) {
			//sc_banditBossAtkNext(nextState);
		}
	}
}