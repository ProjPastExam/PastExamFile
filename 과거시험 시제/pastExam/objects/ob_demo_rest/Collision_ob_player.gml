/// @description Insert description here
// You can write your code in this editor

isCol = true;

if (keyboard_check_pressed(global.btInter)) {
	SE_Play(s_cloth1, global.vol);
	global.hp = 9;
	instance_destroy();
}