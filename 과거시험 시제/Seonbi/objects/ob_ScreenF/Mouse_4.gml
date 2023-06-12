/// @description Insert description here
// You can write your code in this editor
if (!global.fullScreen) {
	global.fullScreen	= true;
	VSLS_Set("fullScreen", true);
	VSLS_File_Save("saveFile");
	//window_set_showborder(!global.fullScreen);
	window_set_fullscreen(true);
}
else {
	global.fullScreen	= false;
	VSLS_Set("fullScreen", false);
	VSLS_File_Save("saveFile");
	//window_set_showborder(!global.fullScreen);
	window_set_fullscreen(false);
}