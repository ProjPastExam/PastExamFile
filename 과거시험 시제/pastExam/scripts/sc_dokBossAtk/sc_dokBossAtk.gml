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
		sc_mobRun(12, disIndex1, disIndex2, 12, nextState, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
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
		else if ( process < 40+lvDly )	{ image_index = 3; }
		else if ( process < 48+lvDly )	{ image_index = 4; }
		else if ( process < 56+lvDly )	{ image_index = 5; }
		else if ( process < 64+lvDly )	{ image_index = 6; }
		else if ( process < 72+lvDly )	{ image_index = 7; }
		else if ( process < 80+lvDly )	{ image_index = 8; }
		else if ( process < 88+lvDly )	{ image_index = 9; }
		else if ( process < 96+lvDly )	{ image_index = 10; }
		else if ( process < 104+lvDly )	{ image_index = 11; }
		else if ( process < 112+lvDly )	{ image_index = 12; }
		else if ( process < 120+lvDly )	{ image_index = 13; }
		else if ( process < 150+lvDly )	{ image_index = 14; }
		else { state = 10;	delay = 50;	process = 0; isCounter = 0; }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_jpBoss_atk2;
		xSpeed = 0;
		isDK = true;
		
		if ( process == 1 ) { 
			//SE_Play(s_jp_dAtk, global.vol); 
		}
		
		if ( process == 55 ) { 
			SE_Play(s_jpBoss_atk2, global.vol);
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
			var disIndex = abs(plX-x);
			if (disIndex < 350 && disIndex > 0 && process > 28) { process = 45; }
			if ((x < 300 || x > room_width - 300) && process > 28) { process = 45; }
		}
		else if ( process < 50 ) { image_index = 2; xSpeed = 20*dir;	ySpeed = 0; }
		else if ( process < 55 ) { image_index = 3; xSpeed = 10*dir;	ySpeed = 0; }
		else if ( process < 60 ) { image_index = 4;	ySpeed = 0; }
		else if ( process < 65 ) { image_index = 5;	ySpeed = 0; }
		else if ( process < 95 ) { image_index = 6; }
		else { sc_jpBossAtkNext(nextState);	process = 0;	delay = random_range(60, 80); }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_jpBoss_atk_rdy2;
		isDK = true;
		
		if ( process == 1 ) { 
			//SE_Play(s_jp_dAtk, global.vol); 
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if ( process == 12 ) { 
			SE_Play(s_jpBoss_rdy, global.vol);
		}
		if ( process == 30 ) { SE_Play(s_jpBoss_yell1, global.vol); }
		
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
	
	else if (state == 16) {
		process++;
		sprite_index = sp_jpBoss_counter;
		isDK = true;
		
		if ( process == 24 ) { SE_Play(s_jpBoss_yell2, global.vol); }
		
		if ( process == 65+lvDly ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_counterEf;
		}
		
		isDK = true;
		if ( process < 24 ) { image_index = 0; xSpeed = dir * (process-30)/1.5; }
		else if ( process < 30 ) { image_index = 1; xSpeed = dir * (process-30)/1.5; }
		else if ( process < 59+lvDly ) { image_index = 2; }
		else if ( process < 65+lvDly ) { image_index = 2; xSpeed = 12 * dir; }
		else if ( process < 71+lvDly ) { image_index = 3; xSpeed = 24 * dir; }
		else if ( process < 77+lvDly ) { image_index = 3; xSpeed = 12 * dir; }
		else if ( process < 90+lvDly ) { image_index = 4; }
		else { sc_jpBossAtkNext(nextState); state = 9;	process = 80;	delay = 60 + phaseDelay*4; }
		
	}
	
	else if (state == 18) {
		process++;
		sprite_index = sp_jpBoss_atkDown; 
		if ( process == 30+lvDly ) { 
			//ySpeed = -20; 
			with (instance_create_layer(x, y, "effect", ob_jpBossDownAtk)) {
				jpBoss = other.id;
			}
			SE_Play(s_jpBoss_up, global.vol);
		}
		
		if ( process == 120+lvDly ) { 
			uc_shake(10, 0.1);
			SE_Play(s_jpBoss_down, global.vol);
		}
		
		if ( process == 130+lvDly ) { 
			//SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_atkDownEf;
		}
		
		isDK = true;	isDF = true;
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; }
		else if ( process < 30+lvDly ) { image_index = 2; }
		else if ( process < 50+lvDly ) { image_index = 3; ySpeed = 1.6*(process-lvDly - 50); }
		else if ( process < 70+lvDly ) { image_index = 3; ySpeed = 0; }
		else if ( process < 120+lvDly ) { 
			image_index = 3; 
			xSpeed = 50 * dir;
			ySpeed = 40;
			if (!isJump) process = 119+lvDly;
		}
		else if ( process < 125+lvDly ) { image_index = 3; }
		else if ( process < 130+lvDly ) { image_index = 3; }
		else if ( process < 135+lvDly ) { image_index = 4; }
		else if ( process < 170+lvDly ) { image_index = 5; }
		else { sc_jpBossAtkNext(nextState);	process = 0;	delay = 80 + phaseDelay*2; }
		
	}
	else if ( state == 19 ) {
		state = 20;
		sc_jpBossRdy();
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
		else { sc_jpBossAtkNext(90);	process = 0;	delay = 0; }
	}
	
	else if ( state == 21 ) {
		process++;
		sprite_index = sp_jpBoss_atkGRdy;
		
		if ( process == 25 ) { 
			SE_Play(s_swing_c1, global.vol);
		}
		
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
		
		if ( process == 10+lvDly ) { 
			SE_Play(s_jpBoss_atk3_1, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y+175, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_atkGEf;
			ob.xSpeed		= 35 * dir;
			ob.life			= 240;
		}
		
		if ( process < 5 ) { image_index = 0; }
		else if ( process < 10+lvDly ) { image_index = 1; }
		else if ( process < 15+lvDly ) { image_index = 2; }
		else if ( process < 20+lvDly ) { image_index = 3; }
		else if ( process < 25+lvDly ) { image_index = 4; }
		else { sc_jpBossAtkNext();	delay = 0; }
	}
	
	else if ( state == 23 ) {
		process++;
		sprite_index = sp_jpBoss_atkG;
		
		if ( process == 10+lvDly ) { 
			SE_Play(s_jpBoss_atk3_2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y+175, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_atkGEf;
			ob.xSpeed		= 35 * dir;
			ob.life			= 240;
		}
		
		if ( process < 5 ) { image_index = 4; }
		else if ( process < 10+lvDly ) { image_index = 5; }
		else if ( process < 15+lvDly ) { image_index = 6; }
		else if ( process < 20+lvDly ) { image_index = 7; }
		else if ( process < 25+lvDly ) { image_index = 8; }
		else if ( process < 50+lvDly ) { image_index = 9; }
		else { sc_jpBossAtkNext(nextState);	process = 0;	delay = 0; }
	}
	
	else if ( state == 24 ) {
		process++;
		sprite_index = sp_jpBoss_atkGUp;
		
		if ( process == 30+lvDly ) { 
			SE_Play(s_jpBoss_atk3_2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y-50, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_atkGEf;
			ob.xSpeed		= 35 * dir;
			ob.life			= 240;
		}
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 12+lvDly ) { image_index = 1; }
		else if ( process < 18+lvDly ) { image_index = 2; }
		else if ( process < 24+lvDly ) { image_index = 3; }
		else if ( process < 30+lvDly ) { image_index = 4; }
		else if ( process < 36+lvDly ) { image_index = 5; }
		else if ( process < 42+lvDly ) { image_index = 6; }
		else if ( process < 48+lvDly ) { image_index = 7; }
		else if ( process < 54+lvDly ) { image_index = 8; }
		else if ( process < 60+lvDly ) { image_index = 9; }
		else if ( process < 90+lvDly ) { image_index = 10; }
		else { sc_jpBossAtkNext(nextState);	process = 0;	delay = 100; }
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
		else { sc_jpBossAtkNext(nextState);	process = 0;	delay = 100; }
	}
	
	else if ( state == 26 ) {
		process++;
		sprite_index = stand2Sp;
		
		isDK = true;	isDF = true;
		
		var movePoint = 300;
		if (x < room_width/2) movePoint = room_width - 300;
		
		if (process == 1) {
			//SE_Play(s_swing_a2, global.vol);
			var ob = instance_create_layer(x, y-50, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_telEf1;
			SE_Play(s_jpBoss_tele, global.vol);
		}
		
		if (process == 25) {
			//SE_Play(s_swing_a2, global.vol);
			var ob = instance_create_layer(movePoint, y-50, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpBoss_telEf2;
		}
		
		if (process == 45) {
			x = movePoint;
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		

		if (process > 45) { state = 20;	process = 0;	delay = 0; }
	}
	
	
	else if ( state == 30 ) {
		process++;
		sprite_index = sp_jpBoss_backstep;
		
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
		else { state = nextState;	process = 0;	delay = 0; }
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