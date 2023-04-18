/// @description Insert description here
// You can write your code in this editor
if (global.isShake) {
	global.isShake = false;
	VSLS_Set("isShake", false);
	VSLS_File_Save("saveFile");
}
else {
	global.isShake = true;
	VSLS_Set("isShake", true);
	VSLS_File_Save("saveFile");
}