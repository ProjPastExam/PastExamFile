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
	if ( state == 12 || state == 13 ) { isDA = true;	isDF = true; }
	else { isDA = false;	isDF = false; }
	
	
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
		
		if ( process == 1 ) { SE_Play(s_bandit01atk1, global.vol); }
		if ( process == 65 ) { 
			SE_Play(s_swing_b1, global.vol);
			//audio_play_sound(s_swing_b1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_bandit03_atkEf1;
		}
		
		
		if ( process < 12 ) { image_index = 0; }
		else if ( process < 24 ) { image_index = 1; }
		else if ( process < 45 ) { image_index = 2; }
		else if ( process < 55 ) { image_index = 3; xSpeed = dir*18; }
		else if ( process < 61 ) { image_index = 4; xSpeed = dir*21; }
		else if ( process < 65 ) { image_index = 4; xSpeed = dir*24; }
		else if ( process < 69 ) { image_index = 5; }
		else if ( process < 75 ) { image_index = 6; }
		else if ( process < 90 ) { image_index = 7; }
		else { state = 10;	process = 0; delay = irandom_range(80, 100); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_bandit03_backStep;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*15*-1; }
		else if ( process < 14 ) { image_index = 2; xSpeed = dir*5*-1; }
		else if ( process < 18 ) { image_index = 3; }
		else if ( process < 24 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}

}