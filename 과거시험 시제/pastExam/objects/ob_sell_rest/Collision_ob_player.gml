/// @description Insert description here
// You can write your code in this editor


isCol = true;

if (keyboard_check_pressed(global.btInter)) {
	if (global.money >= costIndex) {
		global.money -= costIndex;
		SE_Play(s_cloth1, global.vol);
		global.hp += healIndex + 1;
		if (global.hp > global.hpMax) global.hp = global.hpMax;
		instance_destroy();
	}
}