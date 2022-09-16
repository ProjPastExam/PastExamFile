/// @description Insert description here
// You can write your code in this editor

var state = ob_roomControl.talkCnt;

if (state == 4 && isActive) {
	image_index = 0;
	sprite_index = sp_stage03BossCs2Chang4;
	isActive = false;
}

if (state == 5 && !isActive) {
	sprite_index = sp_stage03BossCs2Chang5;
	isActive = true;
}

if (state == 6 && isActive) {
	image_index = 0;
	sprite_index = sp_stage03BossCs2Chang6;
	isActive = false;
}

if (state == 7 && !isActive) {
	sprite_index = sp_stage03BossCs2Chang7;
	isActive = true;
}