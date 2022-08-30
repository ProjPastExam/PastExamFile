/// @description Insert description here
// You can write your code in this editor
touch = true;


if (keyboard_check_pressed(global.btInter)) {
	if (sc_getItem()) {
		if (isChun) {
			with (ob_item_chun) { alarm[3] = 1; }
			with (ob_sk_chun)	{ alarm[3] = 1; }
		}
		instance_destroy();
	}
}
