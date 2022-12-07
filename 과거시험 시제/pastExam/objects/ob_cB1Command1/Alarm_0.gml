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
	
	if ( process == 6 ) { 
		SE_Play(s_bandit01atk2, global.vol);
		var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
		ob.image_xscale = dir;
		ob.sprite_index = sp_bandit01_atkEffect;
	}
	
	if (process < 1)		{ image_index = 0; }
	else if (process < 6)	{ image_index = 1; }
	else if (process < 12)	{ image_index = 2; }
	else if (process < 18)	{ image_index = 3; }
	else if (process < 24)	{ image_index = 4; }
	else if (process < 30)	{ image_index = 5; }
	else if (process < 36)	{ image_index = 6; }
	else if (process < 42)	{ image_index = 7; }
	else if (process < 48)	{ image_index = 8; }
	else if (process < 54)	{ image_index = 9; }
	else if (process < 60)	{ image_index = 10; }
	else if (process < 66)	{ image_index = 11; }
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