/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(global.btTap) ) {
	room_goto(r_tab);
}

if (keyboard_check_pressed(global.btEsc) ) {
	room_goto(r_setting);
}

if (keyboard_check_pressed(global.btSk2)) {
	room_goto(r_tab);
}

if (keyboard_check_pressed(global.btSk3)) {
	room_goto(r_itemInfo);
}

