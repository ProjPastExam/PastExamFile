/// @description Insert description here
// You can write your code in this editor

with (ob_settingControl) { other.settingIndex = settingIndex; }
if (sc_getKey(global.btInter, gp_face4, 0) && selfIndex == settingIndex) {
	alarm[1] = 1;
}


if (global.level == 1) {
	image_index = global.lan*2;
}
else {
	image_index = global.lan*2 + 1;
}