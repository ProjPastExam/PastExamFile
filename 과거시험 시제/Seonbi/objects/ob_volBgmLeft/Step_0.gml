/// @description Insert description here
// You can write your code in this editor


with (ob_volBgm) { other.state = state; }
image_index = 0;
if (state)	{ 
	if (global.volBgm > 0) { 
		image_index = 1;
		if (sc_getKey(global.btLeft, gp_padl, 0)) {
			global.volBgm -= 25;
			VSLS_Set("volBgm", global.volBgm);
			VSLS_File_Save("saveFile");
			BGM_Set(global.volBgm, 0);
		}
	}
}