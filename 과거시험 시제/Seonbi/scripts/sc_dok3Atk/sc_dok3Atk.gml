// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_dok3Atk(){
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
	if ( state == 11 ){
		sc_mobRun(8, 450, 150, 13, 12, plX, left1, left2, right1, right2);		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_dok3_atk;
		xSpeed = 0;
		
		if ( process == 1 ) { SE_Play(s_dok3Atk1, global.vol); }
		if ( process == 130+lvDly ) {
			SE_Play(s_dok3Atk2, global.vol);
			if ( x > plX ) dir = -1;
			else dir = 1;
			if ( !isJump && dir == -1 && (( left1 == 3 || left2 == 3)))	
				{ ySpeed = -18; }
			if ( !isJump && dir == 1 && (( right1 == 3 || right2 == 3 )))
				{ ySpeed = -18;	 }
		}
		if ( process == 55+lvDly ) { 
			SE_Play(s_swing_b1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dok3_atkEf1;
		}
		
		if ( process == 110+lvDly ) { 
			SE_Play(s_swing_b1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dok3_atkEf1;
		}
		
		if ( process = 180+lvDly*2 ) { 
			SE_Play(s_swing_b1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dok3_atkEf2;
		}
		
		if (process < 125)	{ isDA = true;	isDF = true;	isCounter = true; }
		else				{ isDA = true;	isDK = true;	isCounter = false; }
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; }
		else if ( process < 40+lvDly ) { image_index = 2; }
		else if ( process < 55+lvDly ) { image_index = 2; xSpeed = dir*24; }
		else if ( process < 61+lvDly ) { image_index = 3; }
		else if ( process < 67+lvDly ) { image_index = 4; }
		else if ( process < 73+lvDly ) { image_index = 5; }
		else if ( process < 79+lvDly ) { image_index = 6; xSpeed = dir*2; }
		else if ( process < 85+lvDly ) { image_index = 7; xSpeed = dir*4;}
		else if ( process < 91+lvDly ) { image_index = 8; xSpeed = dir*2;}
		else if ( process < 95+lvDly ) { image_index = 9; }
		else if ( process < 110+lvDly ) { image_index = 9;  xSpeed = dir*24; }
		else if ( process < 115+lvDly ) { image_index = 10; }
		else if ( process < 120+lvDly ) { image_index = 11; }
		else if ( process < 125+lvDly ) { image_index = 12; }
		else if ( process < 130+lvDly ) { image_index = 13; }
		else if ( process < 135+lvDly ) { image_index = 14; xSpeed = dir*4; }
		else if ( process < 140+lvDly ) { image_index = 15; }
		else if ( process < 145+lvDly ) { image_index = 16; }
		else if ( process < 150+lvDly ) { image_index = 17; }
		else if ( process < 165+lvDly*2 ) { image_index = 18; }
		else if ( process < 180+lvDly*2 ) { image_index = 18; xSpeed = dir*24;}
		else if ( process < 185+lvDly*2 ) { image_index = 19; }
		else if ( process < 190+lvDly*2 ) { image_index = 20; }
		else if ( process < 195+lvDly*2 ) { image_index = 21; }
		else if ( process < 200+lvDly*2 ) { image_index = 22; }
		else if ( process < 205+lvDly*2 ) { image_index = 23; }
		else if ( process < 215+lvDly*2 ) { image_index = 24; }
		else { state = 10;	process = 0;	delay = random_range(50, 70); }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_dok3_backstep;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*15*-1; }
		else if ( process < 14 ) { image_index = 2; xSpeed = dir*5*-1; }
		else if ( process < 18 ) { image_index = 3; }
		else if ( process < 20 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_dok3_counter;
		xSpeed = 0;
		
		isDA = true;	isDK = true;
		
		if ( process == 30 ) { SE_Play(s_dok3Atk2, global.vol); }
		
		if ( process = 70+lvDly ) { 
			SE_Play(s_swing_b1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dok3_atkEf2;
		}
		if ( process < 24 ) { image_index = 0; xSpeed = dir * (process-30)/1.5; }
		else if ( process < 30 ) { image_index = 0; xSpeed = dir * (process-30)/1.5; }
		else if ( process < 40+lvDly ) { image_index = 1; }
		else if ( process < 45+lvDly ) { image_index = 2; }
		else if ( process < 50+lvDly ) { image_index = 3; }
		else if ( process < 55+lvDly ) { image_index = 4; }
		else if ( process < 70+lvDly ) { image_index = 5; xSpeed = dir*24; }
		else if ( process < 75+lvDly ) { image_index = 6; }
		else if ( process < 80+lvDly ) { image_index = 7; }
		else if ( process < 85+lvDly ) { image_index = 8; }
		else if ( process < 90+lvDly ) { image_index = 9; }
		else if ( process < 95+lvDly ) { image_index = 10; }
		else if ( process < 100+lvDly ) { image_index = 11; }
		else if ( process < 105+lvDly ) { image_index = 12; }
		else if ( process < 125+lvDly ) { image_index = 13; }
		else { state = 9;	process = 80;	delay = random_range(50, 70); }
	}
	
	else if (isCounter && (state == 5 || state == 6 || state == 7 || state == 8)) {
		state = 14;
		process = 0;
		isCounter = false;
	}
}