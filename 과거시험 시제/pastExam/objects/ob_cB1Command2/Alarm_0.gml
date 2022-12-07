/// @description Insert description here
// You can write your code in this editor


if ( sc_getRoomValue("pause") == 0 ) {
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var bottom	= tilemap_get_at_pixel(tileId, x, bbox_bottom);
	
	image_xscale = dir;
	
	if (bottom == 3) {
		if (ySpeed >= 0) {
			xSpeed = 0;
			ySpeed = 0;
			process++;
		}
	}
	else {
		if (ySpeed < -6)		{ image_index = 0; }
		else if (ySpeed < -4)	{ image_index = 1; }
		else if (ySpeed < -2)	{ image_index = 2; }
		else if (ySpeed < 0)	{ image_index = 3; }
		else if (ySpeed < 2)	{ image_index = 4; }
		else if (ySpeed < 4)	{ image_index = 5; }
		else					{ image_index = 6; }
	}
	
	if ( process == 6 ) { 
		var plX = sc_pl_get("x");
		if (x < plX)	dir = 1;
		else			dir = -1;
	}
	
	if ( process == 24 ) { 
		SE_Play(s_bandit01atk2, global.vol);
		var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
		ob.image_xscale = dir;
		ob.sprite_index = sp_bandit01_atkEffect;
	}
	
	if (process < 1)		{  }
	else if (process < 6)	{ image_index = 7; }
	else if (process < 12)	{ image_index = 8; }
	else if (process < 18)	{ image_index = 9; }
	else if (process < 24)	{ image_index = 10; }
	else if (process < 30)	{ image_index = 11; }
	else if (process < 36)	{ image_index = 12; }
	else if (process < 42)	{ image_index = 13; }
	else if (process < 48)	{ image_index = 14; }
	else if (process < 54)	{ image_index = 15; }
	else if (process < 60)	{ image_index = 16; }
	else if (process < 66)	{ image_index = 17; }
	else if (process < 72)	{ image_index = 18; }
	else if (process < 78)	{ image_index = 19; }
	else					{ instance_destroy(); }
	
	x += xSpeed;
	y += ySpeed;
	
	ySpeed += 0.5;
	image_speed = 0;
}
else {
	image_speed = 0;
}
alarm[0] = 1;