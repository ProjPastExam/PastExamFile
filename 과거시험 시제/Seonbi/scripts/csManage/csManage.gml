// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_csManage(var_stageNum, var_nextNum){
	if (global.clearStage > var_stageNum) {
		if (!global.reStory)	alarm[7] = 1;
	}
	else {
		global.clearStage = var_nextNum;
		VSLS_SetAndSave("clearStage", var_nextNum, "saveFile");
	}
}