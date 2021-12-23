/// @description Insert description here
// You can write your code in this editor

var plX = sc_pl_get("x");

if (plX > 0 && isTuto[0]) {
	ob_roomControl.pause = -10;
	tutoSp = sp_tuto_basic;
	isTuto[0] = false;
	disp = 0;
	isDisp = true;
	alarm[1] = 1;
}

if (plX > 3400 && isTuto[1]) {
	ob_roomControl.pause = -10;
	tutoSp = sp_tuto_atk;
	isTuto[1] = false;
	disp = 0;
	isDisp = true;
	alarm[1] = 1;
}

if (plX > 11550 && isTuto[2]) {
	ob_roomControl.pause = -10;
	tutoSp = sp_tuto_sam;
	isTuto[2] = false;
	disp = 0;
	isDisp = true;
	alarm[1] = 1;
}

if (plX > 13500 && isTuto[3]) {
	ob_roomControl.pause = -10;
	tutoSp = sp_tuto_sk;
	isTuto[3] = false;
	disp = 0;
	isDisp = true;
	alarm[1] = 1;
}

if (keyboard_check_pressed(global.btEsc) && isDisp) {
	alarm[2] = 1;
	isDisp = false;
	ob_roomControl.pause = -9;
}

alarm[0] = 1;