/// @description Insert description here
// You can write your code in this editor
if (!isTouch) {
	//x = global.UIX + uc_get_x() - 960;
	//y = global.UIY + uc_get_y() - 580 + 50;
	x = global.moneyX
	y = global.moneyY
}
else {
	x = mouse_x - mnX;
	global.moneyX = x ;
	y = mouse_y - mnY;
	global.moneyY = y;
	
}