/// @description Insert description here
// You can write your code in this editor

if (isCollision) {
	isDraw = true;
	if (keyboard_check_pressed(global.btInter)) {
		if (isActive) {
			isActive = false;
		}
		else {
			isActive = true;
		}
	}
}
else {
	isDraw = false;
	isActive = false;
}


isCollision = false;
alarm[0] = 1;
