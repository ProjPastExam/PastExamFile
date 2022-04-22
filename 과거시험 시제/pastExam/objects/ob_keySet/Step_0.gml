/// @description Insert description here
// You can write your code in this editor

if (state == 2) {
	with (ob_keySet) {
		state = 0;
	}
	with (ob_settingControl) {
		settingIndex = other.controlIndex;
	}
	state = 2;
	sc_keySet();
}
else {
	if (controlIndex == settingIndex) {
		if (state != 2) {
			state = 1;
		}
		
		if (keyboard_check_pressed(global.btInter)) {
			state = 2;
		}
	}
	else {
		state = 0;
	}
}



