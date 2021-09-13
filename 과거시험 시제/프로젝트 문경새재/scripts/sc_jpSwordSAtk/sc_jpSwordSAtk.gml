// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_jpSwordSAtk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
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
	else if ( state == 11 ){
		if ( plX < x + 240 && plX > x - 240 && (left1 != 3 && right1 != 3)) {
			process = 0;
			state = 13;
		}
		else if ( plX > x + 350 ) {
			dir = 1;
			xSpeed = 6;
		}
		else if ( plX < x - 350 ) {
			dir = -1;
			xSpeed = -6;
		}
		else {
			process = 0;
			state = 12;
		}
		if ( !isJump && dir == -1 && (( left1 == 3 || left2 == 3)))	
			{ ySpeed = -15; }
		if ( !isJump && dir == 1 && (( right1 == 3 || right2 == 3 )))
			{ ySpeed = -15; }
		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_jpSwordS_atk1;
		xSpeed = 0;
		
		if ( process == 1 ) { audio_play_sound(s_jp_eAtk, 8, false); }
		if ( process == 32 ) { 
			audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpSwordS_atk1Ef;
		}
		
		
		if ( process < 20 ) { image_index = 0; }
		else if ( process < 24 ) { image_index = 1; xSpeed = dir*15; }
		else if ( process < 28 ) { image_index = 1; xSpeed = dir*20; }
		else if ( process < 32 ) { image_index = 1; xSpeed = dir*24; }
		else if ( process < 37 ) { image_index = 2; }
		else if ( process < 45 ) { image_index = 3; }
		else { state = 14;	process = 0; }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_jpSwordS_backstep;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*16*-1; }
		else if ( process < 14 ) { image_index = 2; xSpeed = dir*8*-1; }
		else if ( process < 18 ) { image_index = 3; }
		else if ( process < 20 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_jpSwordS_atk2;
		xSpeed = 0;
		
		if ( process == 10 ) { 
			audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpSwordS_atk2Ef;
		}
		
		
		if ( process < 5 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; }
		else if ( process < 15 ) { image_index = 2; }
		else if ( process < 35 ) { image_index = 3; }
		else { state = 10;	process = 0;	delay = random_range(100, 150); }
	}
}