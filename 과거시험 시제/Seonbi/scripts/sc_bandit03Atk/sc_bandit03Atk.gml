// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_bandit03Atk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	isDA = false;	isDK = false;	isDF = false;
	
	
	var plX = sc_pl_get("x");
	if ( state == 10 ) {
		sprite_index = stand2Sp;
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			if (patrol) state = 11;
			else if (plX < x + 650 && plX > x - 650 ) state = 12;
		}
		
	}
	else if ( state == 11 ){
		sc_mobRun(6, 500, 300, 13, 12, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_bandit03_atk;
		xSpeed = 0;
		isDA = true;	isDF = true;
		
		if ( process == 1 ) { SE_Play(s_bandit01atk1, global.vol); }
		if ( process == 85+lvDly ) { 
			SE_Play(s_swing_b1, global.vol);
			//audio_play_sound(s_swing_b1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_bandit03_atkEf1;
		}
		
		
		if ( process < 18 ) { image_index = 0; }
		else if ( process < 36 ) { image_index = 1; }
		else if ( process < 57+lvDly ) { image_index = 2; }
		else if ( process < 75+lvDly ) { image_index = 3; xSpeed = dir*18; }
		else if ( process < 81+lvDly ) { image_index = 4; xSpeed = dir*21; }
		else if ( process < 85+lvDly ) { image_index = 4; xSpeed = dir*24; }
		else if ( process < 89+lvDly ) { image_index = 5; }
		else if ( process < 95+lvDly ) { image_index = 6; }
		else if ( process < 110+lvDly ) { image_index = 7; }
		else { state = 10;	process = 0; delay = irandom_range(80, 100); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_bandit03_backStep;
		isDA = true;	isDK = true;	isDF = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*15*-1; }
		else if ( process < 14 ) { image_index = 2; xSpeed = dir*5*-1; }
		else if ( process < 18 ) { image_index = 3; }
		else if ( process < 24 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}

}


function sc_guBandit03Atk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	isDA = false;	isDK = false;	isDF = false;
	
	
	var plX = sc_pl_get("x");
	if ( state == 10 ) {
		sprite_index = stand2Sp;
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			if (patrol) state = 11;
			else if (plX < x + 650 && plX > x - 650 ) state = 12;
		}
		
	}
	else if ( state == 11 ){
		sc_mobRun(6, 500, 300, 13, 12, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_bandit03_atk;
		xSpeed = 0;
		isDA = true;	isDF = true;
		
		if ( process == 1 ) { SE_Play(s_bandit01atk1, global.vol); }
		if ( process == 75+lvDly ) { 
			SE_Play(s_swing_b1, global.vol);
			//audio_play_sound(s_swing_b1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_bandit03_atkEf1;
		}
		
		
		if ( process < 13 ) { image_index = 0; }
		else if ( process < 31 ) { image_index = 1; }
		else if ( process < 47+lvDly ) { image_index = 2; }
		else if ( process < 65+lvDly ) { image_index = 3; xSpeed = dir*18; }
		else if ( process < 71+lvDly ) { image_index = 4; xSpeed = dir*21; }
		else if ( process < 75+lvDly ) { image_index = 4; xSpeed = dir*24; }
		else if ( process < 79+lvDly ) { image_index = 5; }
		else if ( process < 85+lvDly ) { image_index = 6; }
		else if ( process < 100+lvDly ) { image_index = 7; }
		else { state = 10;	process = 0; delay = irandom_range(80, 100); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_bandit03_backStep;
		isDA = true;	isDK = true;	isDF = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*15*-1; }
		else if ( process < 14 ) { image_index = 2; xSpeed = dir*5*-1; }
		else if ( process < 18 ) { image_index = 3; }
		else if ( process < 24 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}

}