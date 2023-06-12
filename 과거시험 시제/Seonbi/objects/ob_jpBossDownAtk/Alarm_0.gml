/// @description Insert description here
// You can write your code in this editor

if ( sc_getRoomValue("pause") == 0 ) {
	with (jpBoss) {
		other.x = x;
		other.y = y+40;
		other.image_xscale = dir;
		if (process < 40+lvDly)		{ other.image_index = 0; }
		else if (process < 45+lvDly)	{ other.image_index = 1; }
		else if (process < 50+lvDly)	{ other.image_index = 2; }
		else if (process < 60+lvDly)	{ other.image_index = 3; }
		else if (process < 70+lvDly)	{ other.image_index = 4; }
		else if (process < 120+lvDly)	{ other.image_index = 5; }
		else if (process < 125+lvDly)	{ other.image_index = 6; }
		else if (process < 130+lvDly)	{ other.image_index = 7; }
		
		if (process > 130+lvDly || state != 18) other.isDestroy = true;
	}
	if (!instance_exists(jpBoss)) isDestroy = true;
	if (isDestroy) instance_destroy();
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;