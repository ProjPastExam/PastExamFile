/// @description Insert description here
// You can write your code in this editor
if (isNext && alarm[5] < 1) {
	alarm[5] = 30;
	state += 1;
	SE_Play(s_talk, global.vol);
}