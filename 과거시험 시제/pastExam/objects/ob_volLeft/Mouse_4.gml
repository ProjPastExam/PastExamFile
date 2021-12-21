/// @description Insert description here
// You can write your code in this editor
if (global.vol > 0) {
	global.vol -= 25;
	VSLS_Set("vol", global.vol);
	VSLS_File_Save("saveFile");
}