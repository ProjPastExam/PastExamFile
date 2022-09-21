// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_chang02Atk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	
	var plX = sc_pl_get("x");
	var plY = sc_pl_get("y");
	if ( state == 10 ) {
		sprite_index = stand2Sp;
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			state = 11;
		}
		
	}
	else if ( state == 11 ){
		sc_mobRun(7.5, 650, 0, 12, 12, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_chang02_atk;
		xSpeed = 0;
		
		//if ( process == 1 ) { audio_play_sound(s_bandit02atk1, 8, false); }
		
		if ( process == 36 ) { 
			SE_Play(s_bandit02atk2, global.vol);
			var axe = instance_create_layer(x-(10*dir), y, "effect", ob_mobBandit02Atk);
			if ( x > plX ) axe.dir = -1; else axe.dir = 1;
			var xs = (plX-x)/80;
			if (xs*dir > 0) axe.xSpeed = xs;
			else axe.xSpeed = 5 * dir;
			axe.ySpeed = abs(xs) - 30 + (plY - y)/80;
		}
		
		
		if ( process < 8 ) { image_index = 0; }
		else if ( process < 16 ) { image_index = 1; }
		else if ( process < 36 ) { image_index = 2; }
		else if ( process < 50 ) { image_index = 3; }
		else { state = 10;	process = 0;	delay = random_range(120, 200); }
	}
}