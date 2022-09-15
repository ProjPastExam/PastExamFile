/// @description Insert description here
// You can write your code in this editor
if (!isTouch) {
	//x = global.UIX + uc_get_x() - 960;
	//y = global.UIY + uc_get_y() - 580 + 50;
	x = global.hpX
	y = global.hpY
}
else {
	x = mouse_x - mnX;
	global.hpX = x ;
	y = mouse_y - mnY;
	global.hpY = y;
	
	with (ob_combUIControl) {
		isTouch = false;
	}
	with (ob_MapControl) {
		isTouch = false;
	}
}