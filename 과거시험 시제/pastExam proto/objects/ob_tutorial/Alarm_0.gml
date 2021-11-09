/// @description Insert description here
// You can write your code in this editor

var plX = sc_pl_get("x");

if (plX > 1200 && isTuto[0]) {
	tutoSp = sp_tuto_atk;
	isTuto[0] = false;
	disp = 0;
	//isDisp = true;
	alarm[1] = 1;
}

if (plX > 2400 && isTuto[1]) {
	tutoSp = sp_tuto_atk;
	isTuto[0] = false;
	disp = 0;
	//isDisp = true;
	alarm[1] = 1;
}

if (keyboard_check_pressed(vk_escape)) {
	alarm[2] = 1;
	//isDisp = false;
}

alarm[0] = 1;