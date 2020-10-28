// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_bandit01Atk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	
	var plX = sc_pl_get("x");
	if ( state == 10 ) {
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			state = 11;
		}
		
	}
	if ( state == 11 ){
		if ( plX > x + 180 ) {
			dir = 1;
			xSpeed = 6;
		}
		else if ( plX < x - 180 ) {
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
		sprite_index = sp_bandit01_atk;
		xSpeed = 0;
		if ( process < 15 ) { image_index = 0; }
		else if ( process < 19 ) { image_index = 1; xSpeed = dir*24; }
		else if ( process < 23 ) { image_index = 2; }
		else if ( process < 27 ) { image_index = 3; }
		else if ( process < 31 ) { image_index = 4; }
		else if ( process < 40 ) { image_index = 5; }
		else { state = 10;	process = 0;	delay = random_range(50, 70); }
	}
}