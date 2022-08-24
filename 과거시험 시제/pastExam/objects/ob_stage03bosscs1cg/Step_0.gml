/// @description Insert description here
// You can write your code in this editor

var state = ob_roomControl.talkCnt;

if (state == 1 && isActive) {
	image_index = 0;
	sprite_index = sp_stage03BossCsCs1;
	isActive = false;
}

if (state == 2 && !isActive) {
	sprite_index = sp_stage03BossCsCs3;
	isActive = true;
}