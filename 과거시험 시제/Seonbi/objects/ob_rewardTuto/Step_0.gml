/// @description Insert description here
// You can write your code in this editor
if (sc_getKey(global.btInter, global.gpInter, 0) && isActive) {
	isActive = false;
	if (global.clearStage == 2) {
		global.clearStage = 3;
		VSLS_SetAndSave("clearStage", 3, "saveFile");
	}
	with (ob_roomControl) {
		pause = 0;
	}
}

if (alp < 90) alp += 1;