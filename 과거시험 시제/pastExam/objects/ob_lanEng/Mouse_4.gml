/// @description Insert description here
// You can write your code in this editor
if (global.lan != 1) {
	global.lan	= 1;
	VSLS_SetAndSave("lan", 1, "saveFile");
}
else {
	//global.lan	= false;
	//VSLS_SetAndSave("lan", false, "saveFile");
}