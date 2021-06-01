// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_bandit02Atk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	
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
			state = 13;
		}
		else if ( plX > x + 550 ) {
			dir = 1;
			xSpeed = 6;
		}
		else if ( plX < x - 550 ) {
			dir = -1;
			xSpeed = -6;
		}
		else {
			state = 12;
		}
		if ( !isJump && dir == -1 && (( left1 == 3 || left2 == 3)))	
			{ ySpeed = -15; }
		if ( !isJump && dir == 1 && (( right1 == 3 || right2 == 3 )))
			{ ySpeed = -15; }
		
	}
	if ( state == 12 ) {
		process++;
		sprite_index = sp_bandit02_atk;
		xSpeed = 0;
		
		if ( process == 1 ) { audio_play_sound(s_bandit02atk1, 8, false); }
		
		if ( process == 21 ) { 
			audio_play_sound(s_bandit02atk2, 8, false);
			var axe = instance_create_layer(x, y, "effect", ob_mobBandit02Atk);
			if ( x > plX ) axe.dir = -1; else axe.dir = 1;
			var xs = (plX-x)/60;
			if (xs*dir > 0) axe.xSpeed = xs;
			else axe.xSpeed = 5 * dir;
			axe.ySpeed = abs(xs) - 26 + (plY - y)/80;
		}
		
		
		if ( process < 20 ) { image_index = 0; }
		else if ( process < 25 ) { image_index = 1; }
		else if ( process < 35 ) { image_index = 2; }
		else { state = 10;	process = 0;	delay = random_range(120, 200); }
	}
	
	if ( state == 13 ) {
		process++;
		sprite_index = sp_bandit02_backStep;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; xSpeed = dir*18*-1; }
		else if ( process < 18 ) { image_index = 2; xSpeed = dir*7*-1; }
		else if ( process < 22 ) { image_index = 3; }
		else if ( process < 24 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
}