// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_jpGunAtk(){
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
	else if ( state == 11 ){
		sc_mobRun(6, 650, 300, 13, 12, plX, left1, left2, right1, right2);		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_jpGun_atk;
		xSpeed = 0;
		
		if ( process == 1 ) { SE_Play(s_jp_bAtk, global.vol); }
		
		if ( process == 60+lvDly ) { 
			SE_Play(s_jp_bAtk2, global.vol);
			//audio_play_sound(s_jp_bAtk2, 8, false);
			var fr = instance_create_layer(x, y, "effect", ob_jpGunEf);
			fr.image_xscale = dir;

		}
		
		
		if ( process < 8 ) { image_index = 0; }
		else if ( process < 16 ) { image_index = 1; }
		else if ( process < 60+lvDly ) { image_index = 2; }
		else if ( process < 66+lvDly ) { image_index = 3; xSpeed = dir * -8; }
		else if ( process < 72+lvDly ) { image_index = 4; xSpeed = dir * -6; }
		else if ( process < 78+lvDly ) { image_index = 5; xSpeed = dir * -4; }
		else if ( process < 84+lvDly ) { image_index = 6; xSpeed = dir * -2; }
		else if ( process < 100+lvDly ) { image_index = 7; }
		else { state = 10;	process = 0;	delay = random_range(120, 200); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_jpGun_backstep;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; xSpeed = dir*18*-1; }
		else if ( process < 18 ) { image_index = 2; xSpeed = dir*7*-1; }
		else if ( process < 22 ) { image_index = 3; }
		else if ( process < 24 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
}