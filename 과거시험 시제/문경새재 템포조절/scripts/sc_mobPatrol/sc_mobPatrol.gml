// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobPatrol(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left, bbox_top + 16 );
	var left3	= tilemap_get_at_pixel(tileId, bbox_left - 16, bbox_bottom + 8 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right, bbox_top + 16 );
	var right3	= tilemap_get_at_pixel(tileId, bbox_right + 16, bbox_bottom + 8 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	if ( state == 1 && dir == -1 && (( left1 == 3 || left2 == 3) || (left3 == 0)))	
		{ dir = 1;	delay = random_range(150, 210); }
	if ( state == 1 && dir == 1 && (( right1 == 3 || right2 == 3 ) || (right3 == 0)) )	
		{ dir = -1;	delay = random_range(150, 210); }
	
	if ( state == 1 ) {
		xSpeed = 3 * dir;
		sprite_index = walkSp;
		if ( delay == 0 ) {
			delay = random_range(60,90);
			state = 0;
			sprite_index = standSp;
		}
	}
	else if ( state == 0 && delay == 0 ) {
		delay = random_range(120,180);
		state = 1;
		dir = dir * -1;
	}
}