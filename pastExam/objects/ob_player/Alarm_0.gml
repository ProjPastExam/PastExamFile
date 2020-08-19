/// @description Insert description here
// You can write your code in this editor


sc_playerCamera();

if ( !global.isPause ) {
	sc_keyCheck();
	sc_playerMove();
	sc_playerLight();
	image_speed = 1;
}
else {
	image_speed = 0;
}

alarm[0] = 1;