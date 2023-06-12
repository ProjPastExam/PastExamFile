/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	sc_npcMain();
	image_xscale = -1*image_xscale;
}
else {
	image_speed = 0;
}
alarm[0] = 1;