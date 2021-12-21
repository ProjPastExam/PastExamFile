/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(global.btEsc)) {
	if (global.roomBuffer == NULL) room_goto(demo_main);
	else {
		room_goto(global.roomBuffer);
	}
}