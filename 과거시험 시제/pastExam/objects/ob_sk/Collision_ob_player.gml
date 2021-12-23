/// @description Insert description here
// You can write your code in this editor
touch = true;


if (keyboard_check(global.btInter)) {
	if (global.sk1 == 0) {
		global.sk1 = skNum;
	}
	else if (global.sk2 == 0) {
		global.sk2 = skNum;
	}
	else if (global.sk3 == 0) {
		global.sk3 = skNum;
	}

	
	instance_destroy();
	
}
