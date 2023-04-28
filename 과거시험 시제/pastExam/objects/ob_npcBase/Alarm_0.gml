/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	sc_npcMain();
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;