/// @description Insert description here
// You can write your code in this editor

var state = ob_roomControl.talkCnt;

if (state == 5 && isActive) {
	image_index = 0;
	sprite_index = sp_stage03BossCsChang2;
	isActive = false;
}

if (state == 6 && !isActive) {
	sprite_index = sp_stage03BossCsChang3;
	isActive = true;
}