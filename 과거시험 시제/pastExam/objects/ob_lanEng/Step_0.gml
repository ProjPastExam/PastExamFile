/// @description Insert description here
// You can write your code in this editor

if (global.lan == 1) {
	image_index = 0;
}
else {
	image_index = 1;
}

with (ob_settingControl) {
	other.settingIndex = settingIndex;
}

if (settingIndex == 20 && sc_getKey(global.btInter, gp_face4, 0)) {
	if (global.lan != 1) {
		global.lan	= 1;
		VSLS_SetAndSave("lan", 1, "saveFile");
	}
}