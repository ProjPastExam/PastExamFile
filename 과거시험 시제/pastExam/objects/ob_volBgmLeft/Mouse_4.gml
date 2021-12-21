/// @description Insert description here
// You can write your code in this editor
if (global.volBgm > 0) {
	global.volBgm -= 25;
	VSLS_Set("volBgm", global.volBgm);
	VSLS_File_Save("saveFile");
	BGM_Set(global.volBgm, 0);
}