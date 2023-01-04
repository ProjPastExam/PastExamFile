// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_chang04Atk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	isDA = false;	isDK = false;
	
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
		sc_mobRun(7.5, 300, 0, 12, 12, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_chang04_atk;
		xSpeed = 0;
		
		isDA = true;	isDK = true;
		
		if ( process == 1 ) { audio_play_sound(s_chang_atk4, 8, false); }
		if ( process == 45+lvDly || process == 105+lvDly ) { 
			SE_Play(s_swing_b2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_chang04_atkEf;
		}
		
		
		if ( process < 30+lvDly ) { image_index = 0; }
		else if ( process < 45+lvDly ) { image_index = 1; xSpeed = dir*24; }
		else if ( process < 50+lvDly ) { image_index = 2; }
		else if ( process < 55+lvDly ) { image_index = 3; }
		else if ( process < 60+lvDly ) { image_index = 4; }
		else if ( process < 80+lvDly ) { image_index = 5; }
		else if ( process < 85+lvDly ) { image_index = 1; }
		else if ( process < 90+lvDly ) { image_index = 0; }
		else if ( process < 105+lvDly ) { image_index = 1; xSpeed = dir*24; }
		else if ( process < 110+lvDly ) { image_index = 2; }
		else if ( process < 115+lvDly ) { image_index = 3; }
		else if ( process < 120+lvDly ) { image_index = 4; }
		else if ( process < 130+lvDly ) { image_index = 5; }
		else { state = 10;	process = 0;	delay = random_range(150, 200); }
	}
}