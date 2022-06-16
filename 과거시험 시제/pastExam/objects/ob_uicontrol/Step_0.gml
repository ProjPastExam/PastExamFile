/// @description Insert description here
// You can write your code in this editor
if (!isTouch) {
	x = global.UIX + uc_get_x() - 960;
	y = global.UIY + uc_get_y() - 580 + 50;
}
else {
	x = mouse_x - mnX;
	global.UIX = x - uc_get_x() + 960;
	y = mouse_y - mnY;
	global.UIY = y - uc_get_y() + 580 - 50;
}