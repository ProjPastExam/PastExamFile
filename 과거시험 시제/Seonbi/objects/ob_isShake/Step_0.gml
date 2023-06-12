/// @description Insert description here
// You can write your code in this editor

if (global.isShake == true) {
	image_index = 0 + (global.lan*2);
}
else {
	image_index = 1 + (global.lan*2);
}

with (ob_settingControl) {
	other.settingIndex = settingIndex;
}

if (settingIndex == 19 && sc_getKey(global.btInter, gp_face4, 0)) {
	if (global.isShake) {
		global.isShake = false;
		VSLS_Set("isShake", false);
		VSLS_File_Save("saveFile");
	}
	else {
		global.isShake = true;
		VSLS_Set("isShake", true);
		VSLS_File_Save("saveFile");
	}
}