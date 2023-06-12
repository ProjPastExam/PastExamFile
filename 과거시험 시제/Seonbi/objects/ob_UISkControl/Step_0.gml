/// @description Insert description here
// You can write your code in this editor
if (!isTouch) {
	//x = global.UIX + uc_get_x() - 960;
	//y = global.UIY + uc_get_y() - 580 + 50;
	x = global.UISkX
	y = global.UISkY
}
else {
	x = mouse_x - mnX;
	global.UISkX = x ;
	y = mouse_y - mnY;
	global.UISkY = y;
	
	with (ob_MapControl) {
		isTouch = false;
	}
	with (ob_combUIControl) {
		isTouch = false;
	}
	with (ob_uihpControl) {
		isTouch = false;
	}
	with (ob_UIControl) {
		isTouch = false;
	}
}