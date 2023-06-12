/// @description Insert description here
// You can write your code in this editor

with (ob_keySet) {
	settingIndex = other.settingIndex;
}

with (ob_vol)		{ settingIndex = other.settingIndex; }
with (ob_volBgm)	{ settingIndex = other.settingIndex; }

if (sc_getKey(global.btLeft, gp_padl, 0)) {
	if (settingIndex < 7) {
		settingIndex = 22;
	}
	else if (settingIndex < 13) {
		settingIndex -= 7;
	}
	else if (settingIndex > 13 && settingIndex < 17) {
		settingIndex = 7;
	}
	else if (settingIndex == 17) {
		settingIndex = 16;
	}
	else if (settingIndex == 18) {
		settingIndex = 7;
	}
	else if (settingIndex == 19) {
		settingIndex = 18;
	}
	else if (settingIndex == 21) {
		settingIndex = 14;
	}
	else if (settingIndex == 22) {
		settingIndex = 21;
	}
	else if (settingIndex == 23) {
		settingIndex = 14;
	}
	else if (settingIndex == 24 || settingIndex == 25) {
		settingIndex--;
	}
	else if (settingIndex > 25) {
		settingIndex = 14;
	}
}

if (sc_getKey(global.btRight, gp_padr, 0)) {
	if (settingIndex < 6) {
		settingIndex += 7;
	}
	else if (settingIndex == 6) {
		settingIndex = 12;
	}
	else if (settingIndex < 14) {
		settingIndex = 14;
	}
	else if (settingIndex == 16) {
		settingIndex = 17;
	}
	else if (settingIndex == 18) {
		settingIndex = 19;
	}
	else if (settingIndex == 14 || settingIndex == 15 || settingIndex == 17 || settingIndex == 19) {
		settingIndex = 21;
	}
	else if (settingIndex == 21) {
		settingIndex = 22;
	}
	else if (settingIndex == 22) {
		settingIndex = 0;
	}
	else if (settingIndex == 23 || settingIndex == 24) {
		settingIndex++;
	}
	else if (settingIndex >= 25) {
		settingIndex = 0;
	}
}

if (sc_getKey(global.btDown, gp_padd, 0)) {
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
	else if (settingIndex == 14 || settingIndex == 15) {
		settingIndex++;
	}
	else if (settingIndex == 16 || settingIndex == 17) {
		settingIndex += 2;
	}
	else if (settingIndex == 18 || settingIndex == 19) {
		settingIndex = 14;
	}
	else if (settingIndex == 21 || settingIndex == 22) {
		settingIndex = 23;
	}
	else if (settingIndex == 23 || settingIndex == 24 || settingIndex == 25) {
		settingIndex = 26;
	}
	else if (settingIndex == 26 || settingIndex == 27) {
		settingIndex++;
	}
	else if (settingIndex == 28) {
		settingIndex = 21;
	}
}

if (sc_getKey(global.btUp, gp_padu, 0)) {
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
	else if (settingIndex == 14) {
		settingIndex = 18;
	}
	else if (settingIndex == 16 || settingIndex == 15) {
		settingIndex--;
	}
	else if (settingIndex == 17) {
		settingIndex = 15;
	}
	else if (settingIndex == 18 || settingIndex == 19) {
		settingIndex -= 2;
	}
	else if (settingIndex == 21 || settingIndex == 22) {
		settingIndex = 28;
	}
	else if (settingIndex == 23 || settingIndex == 24 || settingIndex == 25) {
		settingIndex = 21;
	}
	else if (settingIndex == 26) {
		settingIndex = 23;
	}
	else if (settingIndex == 28 || settingIndex == 27) {
		settingIndex--;
	}
}
