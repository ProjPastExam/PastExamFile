/// @description Insert description here
// You can write your code in this editor

if (global.reStory) {
	image_index = 0 + (global.lan*2);
}
else {
	image_index = 1 + (global.lan*2);
}

with (ob_settingControl) {
	other.settingIndex = settingIndex;
}

if (settingIndex == 17 && sc_getKey(global.btInter, gp_face4, 0)) {
	if (!global.reStory) {
		global.reStory	= true;
		VSLS_SetAndSave("reStory", true, "saveFile");
	}
	else {
		global.reStory	= false;
		VSLS_SetAndSave("reStory", false, "saveFile");
	}
}