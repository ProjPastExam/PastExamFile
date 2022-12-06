// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_chang05Atk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	isDA = false;	isDK = false;	isDF = false;
	
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
		sc_mobRun(7.5, 400, 0, 12, 12, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_chang05_atk;
		xSpeed = 0;
		
		isDA = true;	isDF = true;
		isCounter = true;
		
		if ( process == 1 ) { audio_play_sound(s_chang_atk4, 8, false); }
		if ( process == 50 ) { 
			SE_Play(s_swing_b1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_chang05_atkEf1;
		}
		
		if ( process == 130 ) { 
			SE_Play(s_swing_b2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_chang05_atkEf2;
		}
		
		
		if ( process < 8 ) { image_index = 0; }
		else if ( process < 30 ) { image_index = 1; }
		else if ( process < 50 ) { image_index = 1; xSpeed = dir*24; }
		else if ( process < 55 ) { image_index = 2; }
		else if ( process < 60 ) { image_index = 4; }
		else if ( process < 65 ) { image_index = 5; }
		else if ( process < 70 ) { image_index = 6; }
		else if ( process < 75 ) { image_index = 7; }
		else if ( process < 80 ) { image_index = 8; }
		else if ( process < 85 ) { image_index = 9; }
		else if ( process < 90 ) { image_index = 10; }
		else if ( process < 95 ) { image_index = 11; }
		else if ( process < 110 ) { image_index = 12; }
		else if ( process < 130 ) { image_index = 12; xSpeed = dir*24; }
		else if ( process < 135 ) { image_index = 13; }
		else if ( process < 140 ) { image_index = 14; }
		else if ( process < 145 ) { image_index = 15; }
		else if ( process < 150 ) { image_index = 16; }
		else if ( process < 180 ) { image_index = 17; }
		else { state = 10;	process = 0;	delay = random_range(150, 200); isCounter = false; }
	}
	else if (state == 13) {
		process++;
		sprite_index = sp_chang05_counter;
		xSpeed = 0;
		
		isDA = true;	isDK = true;
		
		if ( process == 80 ) { 
			SE_Play(s_swing_b2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_chang05_atkEf2;
		}
		
		
		if ( process < 20 ) { image_index = 0; xSpeed = dir*(process-20);  }
		else if ( process < 60 ) { image_index = 1; }
		else if ( process < 80 ) { image_index = 1; xSpeed = dir*24; }
		else if ( process < 85 ) { image_index = 2; }
		else if ( process < 90 ) { image_index = 3; }
		else if ( process < 95 ) { image_index = 4; }
		else if ( process < 100 ) { image_index = 5; }
		else if ( process < 105 ) { image_index = 6; }
		else { state = 9;	process = 80;	delay = random_range(150, 200); }
	}
	else if ( state == 5 || state == 6 || state == 7 || state == 8) {
		if (isCounter) {state = 13;	process = 0;	isCounter = false;}
	}
}