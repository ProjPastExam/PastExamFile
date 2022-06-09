/// @description Insert description here
// You can write your code in this editor
if (!global.fullScreen) {
	global.fullScreen	= true;
	VSLS_Set("fullScreen", true);
	VSLS_File_Save("saveFile");
	window_set_fullscreen(true);
}