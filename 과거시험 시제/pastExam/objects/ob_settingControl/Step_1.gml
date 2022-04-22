/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(global.btEsc)) {
	goBack = true;
	with (ob_keySet) {
		if (state == 2) {other.goBack = false;}
	}
}

if (goBack) {
	room_goto(global.roomBuffer);
}
