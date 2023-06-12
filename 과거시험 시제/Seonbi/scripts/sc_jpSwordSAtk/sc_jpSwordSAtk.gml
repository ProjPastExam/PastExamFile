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
	
	isDA = false;	isDK = false;	isDF = false;
	
	
	var plX = sc_pl_get("x");
	if ( state == 10 ) {
		sprite_index = stand2Sp;
		isCounter = false;
		
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			state = 11;
		}
		
	}
	else if ( state == 11 ){
		sc_mobRun(6, 400, 240, 13, 12, plX, left1, left2, right1, right2);		
		isCounter = false;
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_jpSwordS_atk1;
		xSpeed = 0;
		
		isDA = true;	isDF = true;
		
		if ( process == 1 ) { SE_Play(s_jp_eAtk, global.vol);	isCounter = true; }
		if ( process == 60+lvDly ) { 
			SE_Play(s_swing_a1, global.vol);
			//audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpSwordS_atk1Ef;
		}
		
		
		if ( process < 48+lvDly ) { image_index = 0; }
		else if ( process < 52+lvDly ) { image_index = 1; xSpeed = dir*20; }
		else if ( process < 54+lvDly ) { image_index = 1; xSpeed = dir*22; }
		else if ( process < 60+lvDly ) { image_index = 1; xSpeed = dir*24; }
		else if ( process < 57+lvDly ) { image_index = 2; }
		else if ( process < 65+lvDly ) { image_index = 3; }
		else { state = 14;	process = 0; }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_jpSwordS_backstep;
		
		isDA = true;	isDK = true;	isDF = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*16*-1; }
		else if ( process < 14 ) { image_index = 2; xSpeed = dir*8*-1; }
		else if ( process < 18 ) { image_index = 3; }
		else if ( process < 20 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0;	isCounter = false; }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_jpSwordS_atk2;
		xSpeed = 0;
		
		isDA = true;	isDF = true;
		
		if ( process == 10 ) { 
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
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
	
	else if ( state == 15 ) {
		process++;
		sprite_index = sp_jpSwordS_counter;
		xSpeed = 0;
		isCounter = false;
		
		isDA = true;	isDK = true;
		
		if ( process == 1 ) { isStun = false; }
		if ( process == 24 ) { SE_Play(s_jp_eAtk, global.vol); }
		
		if ( process == 77+lvDly ) { 
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpSwordS_atk1Ef;
		}
		
		
		if ( process < 24 ) { image_index = 0; xSpeed = dir * (process-30)/1.5; }
		else if ( process < 30 ) { image_index = 1; xSpeed = dir * (process-30)/1.5; }
		else if ( process < 58+lvDly ) { image_index = 1; }
		else if ( process < 64+lvDly ) { image_index = 2; xSpeed = 9 * dir; }
		else if ( process < 70+lvDly ) { image_index = 2; xSpeed = 18 * dir; }
		else if ( process < 77+lvDly ) { image_index = 2; xSpeed = 27 * dir; }
		else if ( process < 82+lvDly ) { image_index = 3; xSpeed = 6 * dir; }
		else if ( process < 100+lvDly ) { image_index = 4; }
		else { state = 9;	process = 80;	delay = 0; }
	}
	
	else if (isCounter && (state == 5 || state == 6 || state == 7 || state == 8)) {
		state = 15;
		process = 0;
	}
}