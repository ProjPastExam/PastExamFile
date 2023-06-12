/// @description Insert description here
// You can write your code in this editor
if (global.fullScreen) {
	global.fullScreen	= false;
	VSLS_Set("fullScreen", false);
	VSLS_File_Save("saveFile");
	window_set_fullscreen(false);
}