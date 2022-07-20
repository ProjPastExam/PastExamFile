/// @description Insert description here
// You can write your code in this editor
touch = true;


if (keyboard_check_pressed(global.btInter)) {
	if (sc_getItem()) {
		instance_destroy();
	}
}
