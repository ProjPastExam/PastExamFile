/// @description Insert description here
// You can write your code in this editor


if (keyboard_check_pressed(global.btInter) && instance_exists(ob_roomControl) && sc_pl_get("canMove") == 0) {
	with (ob_roomControl) {
		isEnhance = true;
	}
}