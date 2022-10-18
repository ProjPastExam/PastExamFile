/// @description Insert description here
// You can write your code in this editor

if (global.fullScreen) {
	image_index = 0;
}
else {
	image_index = 1;
}

with (ob_settingControl) {
	other.settingIndex = settingIndex;
}

if (settingIndex == 16 && sc_getKey(global.btInter, gp_face4, 0)) {
	if (!global.fullScreen) {
		global.fullScreen	= true;
		VSLS_Set("fullScreen", true);
		VSLS_File_Save("saveFile");
		window_set_fullscreen(true);
	}
	else {
		global.fullScreen	= false;
		VSLS_Set("fullScreen", false);
		VSLS_File_Save("saveFile");
		window_set_fullscreen(false);
	}
}