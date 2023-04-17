/// @description Insert description here
// You can write your code in this editor

if (global.camUp == 1) {
	image_index = 0 + (global.lan*2);
}
else {
	image_index = 1 + (global.lan*2);
}

with (ob_settingControl) {
	other.settingIndex = settingIndex;
}

if (settingIndex == 18 && sc_getKey(global.btInter, gp_face4, 0)) {
	if (global.camUp == 0) {
		global.camUp = 1;
		VSLS_Set("camUp", 1);
		VSLS_File_Save("saveFile");
	}
	else {
		global.camUp = 0;
		VSLS_Set("camUp", 0);
		VSLS_File_Save("saveFile");
	}
}