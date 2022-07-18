/// @description Insert description here
// You can write your code in this editor
nextIndex = true;
with (ob_keySet) {
	if (state == 2) other.nextIndex = false;
}

if (keyboard_check_pressed(global.btEsc)) {
	if (nextIndex)	room_goto(global.roomBuffer);
	
}

if (keyboard_check_pressed(global.btTap)) {
	if (nextIndex)	room_goto(r_tab);
	
	
}
if (keyboard_check_pressed(global.btSk2)) {
	if (nextIndex) room_goto(r_itemInfo);
}

if (keyboard_check_pressed(global.btSk3)) {
	if (nextIndex) room_goto(r_tab);
}