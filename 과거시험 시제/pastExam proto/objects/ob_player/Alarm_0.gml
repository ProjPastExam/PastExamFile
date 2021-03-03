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
	if (itemCheck) { sc_pl_checkItem(); itemCheck = false; }
	sc_obPhysics();
	sc_pl_keyCheck();
	sc_pl_move();
	sc_pl_camera();
}
else {
	image_speed = 0;
}