// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_jpSpearAtk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	
	if ( delay > 0 ) delay--;
	else if ( delay < 0 ) delay = 0;
	if ( state == 12 || state == 13 ) { isDA = true;	isDF = true; }
	else { isDA = false;	isDF = false; }
	//if ((state != 12) && (ob != NULL) ) { instance_destroy(ob); ob = NULL; }
	
	
	
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
		sc_mobRun(6, 520, 240, 13, 12, plX, left1, left2, right1, right2);		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_jpSpear_atk;
		xSpeed = 0;
		
		if ( process == 1 ) { SE_Play(s_jp_aAtk, global.vol); }
		
		if ( process == 55+lvDly ) { 
			SE_Play(s_bandit01atk2, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtkTrack);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpSpear_atkEf;
			ob.ob = id;
			ob.life = 15;
		}
		/*
		if ( process == 55 ) { 
			SE_Play(s_bandit01atk2, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			ob = instance_create_layer(x, y, "effect", ob_jpSpearAtk);
			ob.image_xscale = dir;
		}
		if (process > 55 && process < 70 && ob != NULL) {
			ob.x = x;
			ob.y = y;
		}
		*/
		
		if ( process < 25+lvDly ) { image_index = 0; if (isJump) xSpeed = dir*6; }
		else if ( process < 55+lvDly ) { image_index = 1; if (isJump) xSpeed = dir*6; }
		else if ( process < 70+lvDly ) { image_index = 2; xSpeed = dir*24; }
		else if ( process < 80+lvDly ) { image_index = 2; xSpeed = dir*8; }
		else if ( process < 90+lvDly ) { image_index = 3; xSpeed = dir*4; }
		else { state = 10;	process = 0;	delay = random_range(120, 180); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_jpSpear_backstep;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; xSpeed = dir*16*-1; }
		else if ( process < 18 ) { image_index = 2; xSpeed = dir*8*-1; }
		else if ( process < 22 ) { image_index = 3; }
		else if ( process < 24 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
}