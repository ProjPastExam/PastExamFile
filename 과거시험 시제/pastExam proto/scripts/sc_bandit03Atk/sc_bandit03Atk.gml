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
	if ( state == 12 || state == 14 ) { isDA = true; }
	else { isDA = false; }
	
	
	var plX = sc_pl_get("x");
	var plY = sc_pl_get("y");
	if ( state == 10 ) {
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			if (patrol) state = 11;
			else if (plX < x + 650 && plX > x - 650 ) state = 12;
		}
		
	}
	if ( state == 11 ){
		if ( plX < x + 300 && plX > x - 300 && (left1 != 3 && right1 != 3) ) {
			process = 0;
			state = 13;
		}
		else if ( plX > x + 450 ) {
			dir = 1;
			xSpeed = 6;
		}
		else if ( plX < x - 450 ) {
			dir = -1;
			xSpeed = -6;
		}
		else {
			process = 0;
			state = 12;
		}
		if ( !isJump && dir == -1 && (( left1 == 3 || left2 == 3)))	
			{ ySpeed = -15; }
		if ( !isJump && dir == 1 && (( right1 == 3 || right2 == 3 )))
			{ ySpeed = -15; }
		
	}
	if ( state == 12 ) {
		process++;
		sprite_index = sp_bandit03_atk;
		xSpeed = 0;
		
		if ( process == 1 ) { audio_play_sound(s_bandit01atk1, 8, false); }
		if ( process == 50 ) { 
			audio_play_sound(s_swing_b1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_bandit03_atkEf1;
		}
		
		
		if ( process < 30 ) { image_index = 0; }
		else if ( process < 40 ) { image_index = 1; xSpeed = dir*10; }
		else if ( process < 46 ) { image_index = 1; xSpeed = dir*15; }
		else if ( process < 50 ) { image_index = 2; xSpeed = dir*20; }
		else if ( process < 54 ) { image_index = 3; }
		else if ( process < 60 ) { image_index = 4; }
		else { state = 14;	process = 0; }
	}
	
	if ( state == 13 ) {
		process++;
		sprite_index = sp_bandit03_backStep;
		isDA = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 15 ) { image_index = 1; xSpeed = dir*18*-1; }
		else if ( process < 24 ) { image_index = 2; xSpeed = dir*12*-1; }
		else if ( process < 27 ) { image_index = 3; }
		else if ( process < 30 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
	
	if ( state == 14 ) {
		process++;
		sprite_index = sp_bandit03_atk;
		xSpeed = 0;
		
		if ( process == 20 ) { 
			audio_play_sound(s_swing_b2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_bandit03_atkEf2;
		}
		
		
		if ( process < 10 ) { image_index = 5; xSpeed = dir*10;}
		else if ( process < 16 ) { image_index = 5; xSpeed = dir*15; }
		else if ( process < 20 ) { image_index = 6; xSpeed = dir*20; }
		else if ( process < 24 ) { image_index = 7; }
		else if ( process < 38 ) { image_index = 8; }
		else { state = 10;	process = 0;	delay = random_range(120, 180); }
	}
}