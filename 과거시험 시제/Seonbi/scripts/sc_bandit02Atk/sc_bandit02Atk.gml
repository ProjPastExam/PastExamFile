// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_bandit02Atk(){
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
			if (patrol) state = 11;
			else if (plX < x + 650 && plX > x - 650 ) state = 12;
		}
		
	}
	else if ( state == 11 ){
		sc_mobRun(6, 550, 300, 13, 12, plX, left1, left2, right1, right2);
		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_bandit02_atk;
		xSpeed = 0;
		
		if ( process == 1 ) { SE_Play(s_bandit02atk1, global.vol); }
		
		if ( process == 36+lvDly ) {
			SE_Play(s_bandit02atk2, global.vol);
			//audio_play_sound(s_bandit02atk2, 8, false);
			var axe = instance_create_layer(x-(10*dir), y, "effect", ob_mobAtkThrow);
			axe.sprite_index	= sp_bandit02_atkEffect;
			axe.atkSprite		= sp_bandit02_atkEffect;
			axe.stopSprite		= sp_bandit02_atkEffect2;
			if ( x > plX ) axe.dir = -1; else axe.dir = 1;
			var xs = (plX-x)/80;
			if (xs*dir < 4) xs = 5*dir;
			axe.xSpeed = xs;
			axe.ySpeed = abs(xs) - 30;// + (plY - y)/120;
		}
		
		
		if ( process < 36+lvDly ) { image_index = 0; }
		else if ( process < 41+lvDly ) { image_index = 1; }
		else if ( process < 51+lvDly ) { image_index = 2; }
		else { state = 10;	process = 0;	delay = random_range(120, 200); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_bandit02_backStep;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; xSpeed = dir*20*-1; }
		else if ( process < 22 ) { image_index = 2; xSpeed = dir*9*-1; }
		else if ( process < 26 ) { image_index = 3; }
		else if ( process < 30 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
}


function sc_guBandit02Atk(){
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
			if (patrol) state = 11;
			else if (plX < x + 650 && plX > x - 650 ) state = 12;
		}
		
	}
	else if ( state == 11 ){
		sc_mobRun(6, 550, 300, 13, 12, plX, left1, left2, right1, right2);
		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_bandit02_atk;
		xSpeed = 0;
		
		if ( process == 1 ) { SE_Play(s_bandit02atk1, global.vol); }
		
		if ( process == 31+lvDly ) {
			SE_Play(s_bandit02atk2, global.vol);
			//audio_play_sound(s_bandit02atk2, 8, false);
			var axe = instance_create_layer(x-(10*dir), y, "effect", ob_mobAtkThrow);
			axe.sprite_index	= sp_bandit02_atkEffect;
			axe.atkSprite		= sp_bandit02_atkEffect;
			axe.stopSprite		= sp_bandit02_atkEffect2;
			if ( x > plX ) axe.dir = -1; else axe.dir = 1;
			var xs = (plX-x)/80;
			if (xs*dir > 0) axe.xSpeed = xs;
			else axe.xSpeed = 5 * dir;
			axe.ySpeed = abs(xs) - 30 + (plY - y)/80;
		}
		
		
		if ( process < 31+lvDly ) { image_index = 0; }
		else if ( process < 36+lvDly ) { image_index = 1; }
		else if ( process < 46+lvDly ) { image_index = 2; }
		else { state = 10;	process = 0;	delay = random_range(120, 200); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_bandit02_backStep;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; xSpeed = dir*20*-1; }
		else if ( process < 22 ) { image_index = 2; xSpeed = dir*9*-1; }
		else if ( process < 26 ) { image_index = 3; }
		else if ( process < 30 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
}