/// @description Insert description here
// You can write your code in this editor
if (!isTouch) {
	//x = global.UIX + uc_get_x() - 960;
	//y = global.UIY + uc_get_y() - 580 + 50;
	x = global.UIX
	y = global.UIY
}
else {
	x = mouse_x - mnX;
	global.UIX = x ;
	y = mouse_y - mnY;
	global.UIY = y;
	
	with (ob_MapControl) {
		isTouch = false;
	}
	with (ob_combUIControl) {
		isTouch = false;
	}
	with (ob_uihpControl) {
		isTouch = false;
	}
}