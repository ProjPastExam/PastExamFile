/// @description Insert description here
// You can write your code in this editor
if (global.lan != 0) {
	global.lan	= 0;
	VSLS_SetAndSave("lan", 0, "saveFile");
}
else {
	//global.lan	= false;
	//VSLS_SetAndSave("lan", false, "saveFile");
}