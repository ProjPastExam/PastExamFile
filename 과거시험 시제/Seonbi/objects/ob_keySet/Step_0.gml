/// @description Insert description here
// You can write your code in this editor

if (apIndex > 0) apIndex--;

if (state == 2) {
	with (ob_keySet) {
		state = 0;
	}
	with (ob_settingControl) {
		settingIndex = other.controlIndex;
	}
	state = 2;
	if (global.gamepadSlot == -1)	{ sc_keySet(); }
	else							{ sc_gpSet(); }
}
else {
	if (controlIndex == settingIndex) {
		if (state != 2) {
			state = 1;
		}
		
		if (sc_getKey(global.btInter, gp_face4, 0)) {
			state = 2;
		}
	}
	else {
		state = 0;
	}
}



