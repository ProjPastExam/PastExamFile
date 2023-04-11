/// @description Insert description here
// You can write your code in this editor

if ( sc_getRoomValue("pause") == 0 ) {
	life--;
	if (ob != NULL) {
		x = ob.x;
		y = ob.y;
		if (ob.state == 5 || ob.state == 6 || ob.state == 7 || ob.state == 8 || ob.state == 9 || ob.state == -1) {
			instance_destroy();
		}
	}
	if (life < 0) instance_destroy();
	
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;