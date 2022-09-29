/// @description Insert description here
// You can write your code in this editor
if (!global.reStory) {
	global.reStory	= true;
	VSLS_SetAndSave("reStory", true, "saveFile");
}
else {
	global.reStory	= false;
	VSLS_SetAndSave("reStory", false, "saveFile");
}