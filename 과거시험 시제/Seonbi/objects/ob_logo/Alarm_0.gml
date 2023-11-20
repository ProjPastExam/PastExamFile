/// @description Insert description here
// You can write your code in this editor
if (global.lan == -1)			room_goto(r_language);
else if (global.keyGp == -1)	room_goto(r_keyGp);
else							room_goto(r_main);