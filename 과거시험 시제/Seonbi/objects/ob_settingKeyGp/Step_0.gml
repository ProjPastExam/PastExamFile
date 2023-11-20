/// @description Insert description here
// You can write your code in this editor


image_index = global.keyGp + (global.lan*2);


with (ob_settingControl) {
	other.settingIndex = settingIndex;
}

if (settingIndex == 13 && sc_getKey(global.btInter, gp_face4, 0)) {
	if (global.keyGp == 0) {
		global.keyGp = 1;
		VSLS_Set("keyGp", 1);
		VSLS_File_Save("saveFile");
	
	}
	else {
		global.keyGp = 0;
		VSLS_Set("keyGp", 0);
		VSLS_File_Save("saveFile");
	}
	with(ob_keySet)
	{
		alarm[1] = 1;
	}
	with(ob_buttonPrint)
	{
		alarm[1] = 1;
	}
}