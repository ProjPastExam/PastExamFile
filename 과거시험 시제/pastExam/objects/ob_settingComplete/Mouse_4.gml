/// @description Insert description here
// You can write your code in this editor
if (global.roomBuffer == NULL) room_goto(demo_main);
else {
	room_goto(global.roomBuffer);
}