/// @description Insert description here
// You can write your code in this editor
if (sc_getKey(global.btInter, global.gpInter, 0) && isActive) {
	isActive = false;
	with (ob_roomControl) {
		pause = 0;
	}
	if (global.clearStage == 56) {
		global.clearStage = 57;
		VSLS_SetAndSave("clearStage", 57, "saveFile");
	}
}

if (alp < 90) alp += 1;
