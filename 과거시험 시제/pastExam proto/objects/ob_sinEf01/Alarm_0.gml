/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("slow") == 0 )	{
	alarm[0] = 1;
	image_speed = 1;
}
else {
	alarm[0] = 2;
	image_speed = 0.5;
}

if ( sc_getRoomValue("pause") == 0 ) {
	image_xscale = dir;
	x += dir*70;
	
}
else {
	image_speed = 0;
}