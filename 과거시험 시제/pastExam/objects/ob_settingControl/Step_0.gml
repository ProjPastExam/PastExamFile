/// @description Insert description here
// You can write your code in this editor

with (ob_keySet) {
	settingIndex = other.settingIndex;
}

if (sc_getKey(global.btLeft, global.gpLeft, 0)) {
	if (settingIndex > 6 && settingIndex < 13) {
		settingIndex -= 7;
	}
}

if (sc_getKey(global.btRight, global.gpRight, 0)) {
	if (settingIndex < 6) {
		settingIndex += 7;
	}
	else if (settingIndex == 6) {
		settingIndex = 12;
	}
}

if (sc_getKey(global.btDown, global.gpDown, 0)) {
	if (settingIndex < 6) {
		settingIndex++;
	}
	else if (settingIndex > 6 && settingIndex < 12) {
		settingIndex++;
	}
	else if (settingIndex == 6) {
		settingIndex = 0;
	}
	else if (settingIndex == 12) {
		settingIndex = 7;
	}
}

if (sc_getKey(global.btUp, global.gpUp, 0)) {
	if (settingIndex < 7 && settingIndex > 0) {
		settingIndex--;
	}
	else if (settingIndex > 7 && settingIndex < 13) {
		settingIndex--;
	}
	else if (settingIndex == 0) {
		settingIndex = 6;
	}
	else if (settingIndex == 7) {
		settingIndex = 12;
	}
}
