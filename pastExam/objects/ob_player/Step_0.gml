/// @description Insert description here
// You can write your code in this editor

if ( !global.isPause ) {
	sc_keyCheck();
	sc_playerMove();
	sc_playerLight();
	image_speed = 1;
}
else {
	image_speed = 0;
}

sc_playerCamera();