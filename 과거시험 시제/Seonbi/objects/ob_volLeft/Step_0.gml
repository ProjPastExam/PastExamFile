/// @description Insert description here
// You can write your code in this editor


with (ob_vol) { other.state = state; }
image_index = 0;
if (state)	{ 
	if (global.vol > 0) {
		image_index = 1;
		if (sc_getKey(global.btLeft, gp_padl, 0)) {
			global.vol -= 25;
			SE_Play(s_talk, global.vol);
			VSLS_Set("vol", global.vol);
			VSLS_File_Save("saveFile");
		}
	}
}