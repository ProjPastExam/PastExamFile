/// @description Insert description here
// You can write your code in this editor

if (global.lan == 0) {
	image_index = 0;
}
else {
	image_index = 1;
}

with (ob_settingControl) {
	other.settingIndex = settingIndex;
}

if (settingIndex == 19 && sc_getKey(global.btInter, gp_face4, 0)) {
	if (global.lan != 0) {
		global.lan	= 0;
		VSLS_SetAndSave("lan", 0, "saveFile");
	}
}