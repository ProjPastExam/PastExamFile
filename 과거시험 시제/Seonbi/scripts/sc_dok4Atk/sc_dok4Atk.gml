// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_dok4Atk(){
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
	if ( state == 11 ){
		sc_mobRun(8, 400, 300, 13, 12, plX, left1, left2, right1, right2);		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_dok4_atk;
		xSpeed = 0;
		isDA = true;	isDK = true;
		
		if ( process == 1 ) { SE_Play(s_dok4Atk, global.vol); }
		if ( process == 52+lvDly ) { 
			SE_Play(s_swing_b1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtkTrack);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dok4_atkEf1;
			ob.life = 21;
			ob.ob = id;
		}
		
		if ( process == 108+lvDly ) { 
			SE_Play(s_swing_b1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dok4_atkEf2;
		}
		
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; }
		else if ( process < 48+lvDly ) { image_index = 2; }
		else if ( process < 52+lvDly ) { image_index = 3; xSpeed = dir*30; }
		else if ( process < 56+lvDly ) { image_index = 4; xSpeed = dir*27; }
		else if ( process < 60+lvDly ) { image_index = 5; xSpeed = dir*24; }
		else if ( process < 66+lvDly ) { image_index = 6; xSpeed = dir*21; }
		else if ( process < 68+lvDly ) { image_index = 7; xSpeed = dir*18; }
		else if ( process < 73+lvDly ) { image_index = 8; }
		else if ( process < 78+lvDly ) { image_index = 9; xSpeed = dir*6; }
		else if ( process < 83+lvDly ) { image_index = 10; xSpeed = dir*12; }
		else if ( process < 93+lvDly ) { image_index = 11; }
		else if ( process < 108+lvDly ) { image_index = 11; xSpeed = dir*24; }
		else if ( process < 113+lvDly ) { image_index = 12; }
		else if ( process < 118+lvDly ) { image_index = 13; }
		else if ( process < 123+lvDly ) { image_index = 14; }
		else if ( process < 138+lvDly ) { image_index = 15; }
		else { state = 10;	process = 0;	delay = random_range(50, 70); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_dok4_backstep;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*18*-1; }
		else if ( process < 14 ) { image_index = 2; xSpeed = dir*9*-1; }
		else if ( process < 18 ) { image_index = 3; }
		else if ( process < 20 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
}