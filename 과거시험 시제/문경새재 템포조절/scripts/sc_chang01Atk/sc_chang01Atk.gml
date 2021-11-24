// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_chang01Atk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	
	var plX = sc_pl_get("x");
	if ( state == 10 ) {
		sprite_index = stand2Sp;
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			state = 11;
		}
		
	}
	if ( state == 11 ){
		sc_mobRun(7.5, 240, 0, 12, 12, plX, left1, left2, right1, right2);
	}
	if ( state == 12 ) {
		process++;
		sprite_index = sp_chang01_atk;
		xSpeed = 0;
		
		if ( process == 1 ) { audio_play_sound(s_bandit01atk1, 8, false); }
		if ( process == 37 ) { 
			audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_bandit01_atkEffect;
		}
		
		
		if ( process < 25 ) { image_index = 0; }
		else if ( process < 27 ) { image_index = 1; }
		else if ( process < 37 ) { image_index = 1; xSpeed = dir*24; }
		else if ( process < 42 ) { image_index = 2; }
		else if ( process < 58 ) { image_index = 3; }
		else { state = 10;	process = 0;	delay = random_range(150, 200); }
	}
}