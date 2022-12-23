// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_jpSpearSAtk(){
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
		sc_mobRun(6, 600, 300, 13, 12, plX, left1, left2, right1, right2);		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_jpSpearS_atk1;
		xSpeed = 0;
		
		isDA = true; isDK = true;
		
		if ( process == 1 ) { SE_Play(s_jp_dAtk, global.vol); }
		if ( process == 61+lvDly ) {
			SE_Play(s_swing_a1, global.vol);
			//audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpSpearS_atk1Ef;
		}
		
		
		if ( process < 45+lvDly ) { image_index = 0; }
		else if ( process < 53+lvDly ) { image_index = 1; xSpeed = dir*10; }
		else if ( process < 61+lvDly ) { image_index = 1; xSpeed = dir*18; }
		else if ( process < 65+lvDly ) { image_index = 2; xSpeed = dir*10;}
		else if ( process < 68+lvDly ) { image_index = 3; xSpeed = dir*4;}
		else { state = 14;	process = 0; }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_jpSpearS_backstep;
		
		isDA = true;	isDF = true; isDK = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 15 ) { image_index = 1; xSpeed = dir*16*-1; }
		else if ( process < 19 ) { image_index = 2; xSpeed = dir*8*-1; }
		else if ( process < 23 ) { image_index = 3; }
		else if ( process < 25 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_jpSpearS_atk2;
		xSpeed = 0;
		isDA = true; isDK = true;
		
		if ( process == 24 ) { 
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpSpearS_atk2Ef;
		}
		
		
		if ( process < 8 ) { image_index = 0; xSpeed = dir*15; }
		else if ( process < 16 ) { image_index = 1; xSpeed = dir*20; }
		else if ( process < 24 ) { image_index = 1; xSpeed = dir*25; }
		else if ( process < 30 ) { image_index = 2; xSpeed = dir*10;}
		else if ( process < 44 ) { image_index = 3; }
		else { state = 10;	process = 0; delay = random_range(200, 250); }
	}
}