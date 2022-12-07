// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_cBoss1Atk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	isDA = true;	isDK = false;	isDF = false;
	//isCounter = false;
	
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
		var disIndex1 = 800;
		var disIndex2 = 0;
		if (nextState == 13) { disIndex1 = 1000;	disIndex2 = 0; }
		if (nextState == 16) { disIndex1 = 1200;	disIndex2 = 0; }
		//sc_mobRun(12, disIndex1, disIndex2, 30, nextState, plX, left1, left2, right1, right2);
		sc_mobRun(6, disIndex1, disIndex2, nextState, nextState, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_cB1_atk1;
		xSpeed = 0;
		isDK = true;
		isCounter = true;
		
		if ( process == 1 ) { SE_Play(s_cB1_atk1_1, global.vol); }
		if ( process == 60 ) { 
			SE_Play(s_cB1_atk1_2, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_cB1Atk1);
			ob.image_xscale = dir;
			//ob.sprite_index = sp_jpBoss_atk1Ef1;
		}
		
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; }
		else if ( process < 30 ) { image_index = 2; }
		else if ( process < 36 ) { image_index = 3; }
		else if ( process < 42 ) { image_index = 4; }
		else if ( process < 60 ) { image_index = 5; }
		else if ( process < 84 ) { image_index = 6; xSpeed = dir*30; }
		else if ( process < 90 ) { image_index = 7; xSpeed = dir*12; }
		else if ( process < 106 ) { image_index = 8; xSpeed = dir*6; }
		else if ( process < 118 ) { image_index = 9; }
		else { state = 10;	delay = 50;	process = 0;	isCounter = false; sc_cBoss1AtkNext(12); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_cB1_atk1;
		if (isJump)	sprite_index = sp_cB1_atk1Up;
		xSpeed = 0;
		isDK = true;
		isCounter = true;
		
		if ( process == 1 ) { SE_Play(s_cB1_atk2_1, global.vol); }
		if ( process == 30 ) { SE_Play(s_cB1_atk2_2, global.vol); }
		if ( process == 60 ) { 
			SE_Play(s_cB1_atk2_3, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_cB1Atk1);
			ob.image_xscale = dir;
			//ob.sprite_index = sp_jpBoss_atk1Ef1;
		}
		
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; }
		else if ( process < 30 ) { image_index = 2; }
		else if ( process < 36 ) { image_index = 3;	ySpeed = -12; }
		else if ( process < 42 ) { image_index = 4;	ySpeed = -8; }
		else if ( process < 60 ) { image_index = 5;	ySpeed = -2; }
		else if ( process < 84 ) { image_index = 6; xSpeed = dir*30;	ySpeed = 0; }
		else if ( process < 90 ) { image_index = 7; xSpeed = dir*12;	ySpeed = 0; }
		else if ( process < 106 ) { image_index = 8; xSpeed = dir*6;	ySpeed = 0; }
		else if ( process < 112 ) { image_index = 9; }
		else { state = 10;	delay = 50;	process = 0;	isCounter = false; sc_cBoss1AtkNext(13); }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_cB1_atk2;
		xSpeed = 0;
		isDF = true;
		
		if ( process == 2 ) { 
			SE_Play(s_cB1_atk3_1, global.vol); 
			with (ob_cB1G) {
				state = 1;	process = 32;
			}
		}
		
		if ( process == 70 ) { 
			SE_Play(s_cB1_atk3_2, global.vol);
			//audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_cB1_atk2Ef;
		}
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 23 ) { image_index = 1; }
		else if ( process < 29 ) { image_index = 2; }
		else if ( process < 35 ) { image_index = 3; }
		else if ( process < 41 ) { image_index = 4; }
		else if ( process < 58 ) { image_index = 5; }
		else if ( process < 70 ) { image_index = 5; xSpeed = dir*20; }
		else if ( process < 82 ) { image_index = 6; }
		else if ( process < 88 ) { image_index = 7; }
		else if ( process < 110 ) { image_index = 8; }
		else { state = 10;	delay = 50;	process = 0; sc_cBoss1AtkNext(14);}
	}
	
	else if ( state == 15 ) {
		process++;
		sprite_index = sp_cB1_counter;
		
		if ( process == 1 ) { 
			//SE_Play(s_cB1_atk3_1, global.vol); 
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if ( process == 50 ) { 
			with (ob_cB1G) {
				state = 3;	process = 0;
			}
		}
		
		isDK = true;	isDF = true;
		
		if ( process < 24 ) { image_index = 0;		xSpeed = dir * (process-30)/1.5; }
		else if ( process < 30 ) { image_index = 1; xSpeed = dir * (process-30)/1.5; }
		else if ( process < 50 ) { image_index = 2; }
		else if ( process < 58 ) { image_index = 3; }
		else if ( process < 66 ) { image_index = 4; }
		else if ( process < 74 ) { image_index = 5; }
		else if ( process < 82 ) { image_index = 6; }
		else if ( process < 90 ) { image_index = 7; }
		else if ( process < 98 ) { image_index = 8; }
		else if ( process < 106 ) { image_index = 9; }
		else { state = 10;	process = 0;	delay = 80; sc_cBoss1AtkNext(nextState); }
	}
	
	else if (state == 16) {
		process++;
		sprite_index = sp_cB1_command1;
		
		isDK = true;	isDF = true;
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; }
		else if ( process < 18 ) { image_index = 2; }
		else if ( process < 24 ) { image_index = 3; }
		else if ( process < 32 ) { image_index = 4; }
		else if ( process < 40 ) { image_index = 5; }
		else if ( process < 48 ) { image_index = 6; }
		else if ( process < 56 ) { image_index = 7; }
		else { state = 17;	process = 0;	delay = 0; }
		
	}
	
	else if (state == 17) {
		process++;
		sprite_index = sp_cB1_command2;
		isDK = true;	isDF = true;
		
		if (process == 10) {
			sc_cBoss1Command(0);
		}
		
		if (process == 40) {
			sc_cBoss1Command(1);
		}
		
		if (process == 70) {
			sc_cBoss1Command(2);
		}
		
		if ( process == 90 ) { 
			//SE_Play(s_jp_dAtk, global.vol); 
			with (ob_cB1G) {
				state = 2;	process = 0;
			}
		}
		
		if ( process < 110 ) {  }
		else { state = 18;	process = 0;	delay = 0;  }
		
	}
	
	else if (state == 18) {
		process++;
		sprite_index = sp_cB1_command1;
		
		isDK = true;	isDF = true;
		if ( process < 6 ) { image_index = 13; }
		else if ( process < 12 ) { image_index = 14; }
		else if ( process < 18 ) { image_index = 15; }
		else if ( process < 24 ) { image_index = 16; }
		else if ( process < 50 ) { image_index = 17; }
		else { state = 10;	process = 0;	delay = 120; sc_cBoss1AtkNext(); }
		
	}
	
	else if ( state == 5 || state == 6 || state == 7 || state == 8 ) {
		if (isCounter) {
			isCounter = false;
			isStun = false;
			state = 15;
			process = 0;
		}
		
		if (kbIndex == 1) {
			sc_cBoss1AtkNext(nextState);
			delay = phaseDelay*3;
		}
	}
}

function sc_cBoss1AtkNext(index = state){
	var ran = random_range(0, 10);
	
	if (index == 12) {
		if (ran < 2)		{ nextState = 12; }
		else if (ran < 6)	{ nextState = 13; }
		else if (ran < 8)	{ nextState = 14; }
		else				{ nextState = 16; }
	}
	else if (index == 13) {
		if (ran < 4)		{ nextState = 12; }
		else if (ran < 6)	{ nextState = 13; }
		else if (ran < 8)	{ nextState = 14; }
		else				{ nextState = 16; }
	}
	else if (index == 14) {
		if (ran < 4)		{ nextState = 12; }
		else if (ran < 7)	{ nextState = 13; }
		else if (ran < 8)	{ nextState = 14; }
		else				{ nextState = 16; }
	}
	else {
		if (ran < 4)		{ nextState = 12; }
		else if (ran < 8)	{ nextState = 13; }
		else				{ nextState = 14; }
	}

}

function sc_cBoss1Rdy(){
	var plX = sc_pl_get("x");
	var disIndex = abs(plX - x);
	
	if (disIndex > 850) { state = 20;	process = 0; }
	else if ( x < 500 || x > room_width - 500 || disIndex < 400 )	{ state = 26;	process = 0; }
	else { state = 32;	process = 0; }
}