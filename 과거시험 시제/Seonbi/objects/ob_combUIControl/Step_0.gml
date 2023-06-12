/// @description Insert description here
// You can write your code in this editor
if (!isTouch) {
	//x = global.UIX + uc_get_x() - 960;
	//y = global.UIY + uc_get_y() - 580 + 50;
	x = global.comX
	y = global.comY
}
else {
	x = mouse_x - mnX;
	global.comX = x ;
	y = mouse_y - mnY;
	global.comY = y;
	
	with (ob_MapControl) {
		isTouch = false;
	}
}