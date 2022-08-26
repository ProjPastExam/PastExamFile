// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_bandit05Atk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	isDA = false;	isDK = false;	isDF = false;
	
	var plX = sc_pl_get("x");
	
	if ((plX-x)*dir > 0) {
		down = 100;
		defence = 50;
	}
	else {
		down = 0;
		defence = 0;
	}
	
	if ( state == 10 ) {
		sprite_index = stand2Sp;
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			state = 11;
		}
		
	}
	else if ( state == 11 ){
		sc_mobRun(6, 200, 0, 13, 12, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_bandit05_atk;
		xSpeed = 0;
		if ((plX-x)*dir > 0 && process < 60) {
			isDA = true;	isDK = true;	isDF = true;
			sprite_index = sp_bandit05_atkSA;
		}
		
		
		if ( process == 1 ) { SE_Play(s_bandit01atk1, global.vol); }
		if ( process == 80 ) { 
			SE_Play(s_swing_b2, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_bandit05_atkEf;
		}
		
		
		if ( process < 8 ) { image_index = 0; }
		else if ( process < 60 ) { image_index = 1; }
		else if ( process < 80 ) { image_index = 2; xSpeed = dir*18; }
		else if ( process < 86 ) { image_index = 3; }
		else if ( process < 92 ) { image_index = 4; }
		else if ( process < 98 ) { image_index = 5; }
		else if ( process < 104 ) { image_index = 6; }
		else if ( process < 130 ) { image_index = 7; }
		else { state = 10;	process = 0;	delay = random_range(50, 70); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_bandit04_backStep;
		isDA = true;	isDK = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; xSpeed = dir*15*-1; }
		else if ( process < 20 ) { image_index = 2; xSpeed = dir*6*-1; }
		else if ( process < 24 ) { image_index = 3; }
		else if ( process < 40 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
}