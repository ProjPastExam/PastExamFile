/// @description Insert description here
// You can write your code in this editor
if (global.vol < 100) {
	global.vol += 25;
	SE_Play(s_talk, global.vol);
	VSLS_Set("vol", global.vol);
	VSLS_File_Save("saveFile");
}
