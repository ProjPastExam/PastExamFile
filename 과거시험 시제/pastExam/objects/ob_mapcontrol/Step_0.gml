/// @description Insert description here
// You can write your code in this editor
if (!isTouch) {
	//x = global.UIX + uc_get_x() - 960;
	//y = global.UIY + uc_get_y() - 580 + 50;
	x = global.MapX
	y = global.MapY
}
else {
	x = mouse_x - mnX;
	global.MapX = x ;
	y = mouse_y - mnY;
	global.MapY = y;
}