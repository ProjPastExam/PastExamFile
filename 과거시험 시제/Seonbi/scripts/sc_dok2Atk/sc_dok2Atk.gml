// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_dok2Atk(){
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
			if (patrol) state = 11;
			else if (plX < x + 650 && plX > x - 650 ) state = 12;
		}
		
	}
	if ( state == 11 ){
		sc_mobRun(8, 650, 300, 13, 12, plX, left1, left2, right1, right2);		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_dok2_atk;
		xSpeed = 0;
		
		//if ( process == 1 ) { SE_Play(s_jp_cAtk, global.vol); }
		if ( process == 55+lvDly ) { 
			SE_Play(s_swing_b1, global.vol);
			var ob = instance_create_layer(x, y+20, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dok2_atkEf;
		}
		
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; }
		else if ( process < 18 ) { image_index = 2; }
		else if ( process < 24 ) { image_index = 3; }
		else if ( process < 30 ) { image_index = 4; }
		else if ( process < 55+lvDly ) { image_index = 5; }
		else if ( process < 60+lvDly ) { image_index = 6; }
		else if ( process < 65+lvDly ) { image_index = 7; }
		else if ( process < 80+lvDly ) { image_index = 8; }
		else { state = 10;	process = 0;	delay = random_range(50, 70); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_dok2_backstep;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; xSpeed = dir*18*-1; }
		else if ( process < 18 ) { image_index = 2; xSpeed = dir*7*-1; }
		else if ( process < 22 ) { image_index = 3; }
		else if ( process < 26 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
}