// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_jpSwordAtk(){
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
		sc_mobRun(8, 240, 150, 13, 12, plX, left1, left2, right1, right2);		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_jpSword_atk;
		xSpeed = 0;
		
		if ( process == 1 ) { SE_Play(s_jp_cAtk, global.vol); }
		if ( process == 40+lvDly ) { 
			SE_Play(s_swing_c1, global.vol);
			//audio_play_sound(s_swing_c1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpSword_atkEf;
		}
		
		
		if ( process < 7 ) { image_index = 0; }
		else if ( process < 36+lvDly ) { image_index = 1; }
		else if ( process < 40+lvDly ) { image_index = 1; xSpeed = dir*24; }
		else if ( process < 46+lvDly ) { image_index = 2; }
		else if ( process < 60+lvDly ) { image_index = 3; }
		else { state = 10;	process = 0;	delay = random_range(50, 70); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_jpSword_backstep;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*15*-1; }
		else if ( process < 14 ) { image_index = 2; xSpeed = dir*5*-1; }
		else if ( process < 18 ) { image_index = 3; }
		else if ( process < 20 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
}