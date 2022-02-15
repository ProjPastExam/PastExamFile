/// @description Insert description here
// You can write your code in this editor
touch = true;


if (keyboard_check_pressed(global.btInter)) {
	if (global.itemSum < global.itemNum) {
		global.itemGet[global.itemSum] = global.itemData[itemNum];
		global.itemSum++;
		with ( ob_player ) {
			itemCheck = true;
		}
	
		instance_destroy();
	}
}
