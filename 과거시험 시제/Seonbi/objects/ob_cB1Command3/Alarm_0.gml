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
	
	if ( process == 30 ) { 
		SE_Play(s_bandit01atk2, global.vol);
		//audio_play_sound(s_bandit01atk2, 8, false);
		var ob = instance_create_layer(x, y, "effect", ob_mobAtkTrack);
		ob.image_xscale = dir;
		ob.sprite_index = sp_jpSpear_atkEf;
		ob.ob = id;
		ob.life = 15;
	}
	
	if (process < 1)		{  }
	else if (process < 6)	{ image_index = 7; }
	else if (process < 12)	{ image_index = 8; }
	else if (process < 30)	{ image_index = 9; }
	else if (process < 40)	{ image_index = 10; xSpeed = 24*dir; }
	else if (process < 45)	{ image_index = 11; xSpeed = 20*dir; }
	else if (process < 50)	{ image_index = 12; xSpeed = 12*dir; }
	else if (process < 55)	{ image_index = 13; xSpeed = 6*dir; }
	else if (process < 60)	{ image_index = 14; }
	else if (process < 65)	{ image_index = 15; }
	else if (process < 70)	{ image_index = 16; }
	else if (process < 75)	{ image_index = 17; }
	else if (process < 80)	{ image_index = 18; }
	else if (process < 85)	{ image_index = 19; }
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