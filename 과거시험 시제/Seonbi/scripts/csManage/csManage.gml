// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_csManage(var_stageNum)
{
	if (global.clearStage < var_stageNum) 
	{
		global.clearStage = var_stageNum;
		VSLS_SetAndSave("clearStage", var_stageNum, "saveFile");
	}
	else 
	{
		if (!global.reStory)	alarm[7] = 1;
	}
}