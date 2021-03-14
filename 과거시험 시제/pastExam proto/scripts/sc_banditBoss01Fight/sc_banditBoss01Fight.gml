// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_banditBoss01Fight(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	
	var plX = sc_pl_get("x");
	
	if ( state == 10 ) {
		sprite_index = sp_banditBoss01_stand;
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			if (abs(plX - x) < 300) state = 11;
			else if (abs(plX - x) < 600) {
				var i = random_range(0, 10) ;
				if (i < 5) state = 11;
				else state = 15;
			}
			else if (abs(plX - x) < 900) {
				var i = random_range(0, 10) ;
				if (i < 2) state = 11;
				else if (i < 8) state = 15;
				else state = 13;
			}
			else if (abs(plX - x) < 1200) {
				var i = random_range(0, 10) ;
				if (i < 5) state = 15;
				else state = 13;
			}
			else {
				state = 13;
			}
		}
		
	}
	if ( state == 11 ){
		image_xscale = dir;
		if ( plX > x + 180 ) {
			dir = 1;
			xSpeed = 12;
		}
		else if ( plX < x - 180 ) {
			dir = -1;
			xSpeed = -12;
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
		sc_banditBoss01Atk01();
	}
	
	if ( state == 13 ) {
		image_xscale = dir;
		if ( plX > x + 1000 ) {
			dir = 1;
			xSpeed = 12;
		}
		else if ( plX < x - 1000 ) {
			dir = -1;
			xSpeed = -12;
		}
		else {
			state = 14;
		}
	}
	if ( state == 14 ) {
		sc_banditBoss01Atk02();
	}
	if ( state == 15 ) {
		image_xscale = dir;
		if ( plX > x + 400 ) {
			dir = 1;
			xSpeed = 12;
		}
		else if ( plX < x - 400 ) {
			dir = -1;
			xSpeed = -12;
		}
		else {
			state = 16;
		}
	}
	if ( state == 16 ) {
		sc_banditBoss01Atk03();
	}
}