/// @description Insert description here
// You can write your code in this editor
if (global.camUp == 0) {
	global.camUp = 1;
	VSLS_Set("camUp", 1);
	VSLS_File_Save("saveFile");
}
else {
	global.camUp = 0;
	VSLS_Set("camUp", 0);
	VSLS_File_Save("saveFile");
}