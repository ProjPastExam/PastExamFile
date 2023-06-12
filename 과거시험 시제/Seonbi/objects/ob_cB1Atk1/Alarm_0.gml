/// @description Insert description here
// You can write your code in this editor

if ( sc_getRoomValue("pause") == 0 ) {
	x += xSpeed;
	y += ySpeed;
	image_speed = 1;
	
	with (ob_cB1) {
		other.x = x;
		other.y = y;
		
		if (state != 12 && state != 13) { other.alarm[1] = 1; }
	}
}
else {
	image_speed = 0;
}
alarm[0] = 1;