/// @description Insert description here
// You can write your code in this editor
touch = true;


if (keyboard_check(vk_up)) {
	if (global.itemSum < global.itemNum) {
		global.itemGet[global.itemSum] = itemNum;
		global.itemGrade[global.itemSum] = itemGrade;
		global.itemSum++;
		if ( object_exists(ob_player) )
			ob_player.itemCheck = true;
	
		instance_destroy();
	}
}
