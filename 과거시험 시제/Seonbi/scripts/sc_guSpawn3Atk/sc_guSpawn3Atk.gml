// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_guSpawn3Atk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	
	if ( delay > 0 ) delay--;
	else if ( delay < 0 ) delay = 0;
	if ( state == 12 || state == 13 ) { isDA = true;	isDK = true; }
	else { isDA = false;	isDK = false; }
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
		sc_mobRun(6, 300, 0, 12, 12, plX, left1, left2, right1, right2);		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_guSpawn3_atk1;
		xSpeed = 0;
		
		//if ( process == 1 ) { SE_Play(s_jp_aAtk, global.vol); }
		
		if ( process == 48+lvDly ) { 
			SE_Play(s_guSpawn3_atk, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_guSpawn3_atk1Ef;
		}
		
		if ( process < 6+lvDly/4 )			{ image_index = 0; }
		else if ( process < 12+lvDly/2 )	{ image_index = 1; }
		else if ( process < 18+lvDly*3/4 )	{ image_index = 2; }
		else if ( process < 24+lvDly )		{ image_index = 3; }
		else if ( process < 30+lvDly )		{ image_index = 4; }
		else if ( process < 36+lvDly )		{ image_index = 5; }
		else if ( process < 42+lvDly )		{ image_index = 6; xSpeed = dir*12; }
		else if ( process < 48+lvDly )		{ image_index = 7; xSpeed = dir*24; }
		else if ( process < 54+lvDly )		{ image_index = 8; }
		else if ( process < 60+lvDly )		{ image_index = 9; }
		else if ( process < 66+lvDly )		{ image_index = 10; }
		else if ( process < 72+lvDly )		{ image_index = 11; }
		else if ( process < 78+lvDly )		{ image_index = 12; }
		else if ( process < 84+lvDly )		{ image_index = 13; }
		else if ( process < 90+lvDly )		{ image_index = 14; }
		else { state = 10;	process = 0;	delay = 300;	 }
	}
	
}