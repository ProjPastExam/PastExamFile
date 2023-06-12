// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mask3Atk(){
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
	else if ( state == 11 ){
		sc_mobRun(8, 650, 0, 12, 12, plX, left1, left2, right1, right2);		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_mask3_atk;
		xSpeed = 0;
		
		if ( process == 1 ) { SE_Play(s_jp_cAtk, global.vol); }
		if ( process == 40+lvDly || process == 76+lvDly ) { 
			SE_Play(s_swing_b1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtkTrack);
			ob.image_xscale = dir;
			ob.sprite_index = sp_mask3_atkEf1;
			ob.ob = id;
			ob.life = 15;
		}
		
		if ( process == 132+lvDly ) { 
			SE_Play(s_swing_b1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtkTrack);
			ob.image_xscale = dir;
			ob.sprite_index = sp_mask3_atkEf2;
			ob.ob = id;
			ob.life = 15;
		}
		
		if (process == 108) 
		{
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if (process == 108)
		{
			if ( !isJump && dir == -1 && (( left1 == 3 || left2 == 3)))	
				{ ySpeed = -16; }
			if ( !isJump && dir == 1 && (( right1 == 3 || right2 == 3 )))
				{ ySpeed = -16;	 }
		}
		
		
		if ( process < 6 )				{ image_index = 0; }
		else if ( process < 12 )		{ image_index = 1; }
		else if ( process < 18 )		{ image_index = 2; }
		else if ( process < 40+lvDly )	{ image_index = 3; }
		else if ( process < 46+lvDly )	{ image_index = 4;	xSpeed = dir*24;  }
		else if ( process < 52+lvDly )	{ image_index = 5;	xSpeed = dir*24;  }
		else if ( process < 58+lvDly )	{ image_index = 6;	xSpeed = dir*24; }
		else if ( process < 64+lvDly )	{ image_index = 7;	xSpeed = dir*15; }
		else if ( process < 70+lvDly )	{ image_index = 2;	xSpeed = dir*6; }
		else if ( process < 76+lvDly )	{ image_index = 3; }
		else if ( process < 84+lvDly )	{ image_index = 4;	xSpeed = dir*24;  }
		else if ( process < 90+lvDly )	{ image_index = 5;	xSpeed = dir*24;  }
		else if ( process < 96+lvDly )	{ image_index = 6;	xSpeed = dir*24; }
		else if ( process < 102+lvDly )	{ image_index = 7;	xSpeed = dir*15; }
		else if ( process < 108+lvDly )	{ image_index = 0;	xSpeed = dir*6; }
		else if ( process < 114+lvDly )	{ image_index = 1; }
		else if ( process < 120+lvDly )	{ image_index = 2; }
		else if ( process < 132+lvDly )	{ image_index = 3; }
		else if ( process < 138+lvDly )	{ image_index = 4;	xSpeed = dir*24;  }
		else if ( process < 144+lvDly )	{ image_index = 5;	xSpeed = dir*24;  }
		else if ( process < 150+lvDly )	{ image_index = 6;	xSpeed = dir*24; }
		else if ( process < 156+lvDly )	{ image_index = 7;	xSpeed = dir*15; }
		else if ( process < 162+lvDly )	{ image_index = 7;	xSpeed = dir*6; }
		else if ( process < 168+lvDly )	{ image_index = 7; }
		else { state = 10;	process = 0;	delay = random_range(50, 70); }
	}
	/*
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_dok2_backstep;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; xSpeed = dir*18*-1; }
		else if ( process < 18 ) { image_index = 2; xSpeed = dir*7*-1; }
		else if ( process < 22 ) { image_index = 3; }
		else if ( process < 26 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
	*/
}