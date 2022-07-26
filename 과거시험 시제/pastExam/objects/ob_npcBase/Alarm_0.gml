/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	sc_npcMain();
}
else {
	image_speed = 0;
}
alarm[0] = 1;