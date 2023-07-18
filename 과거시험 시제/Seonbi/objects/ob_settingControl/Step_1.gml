/// @description Insert description here
// You can write your code in this editor
nextIndex = true;
with (ob_keySet) {
	if (state == 2) other.nextIndex = false;
}

if (sc_getKey(global.btEsc, global.gpEsc, 0)) {
	if (nextIndex)	room_goto(global.roomBuffer);
	
}

if (sc_getKey(global.btTap, global.gpTap, 0)) {
	if (nextIndex)	room_goto(r_tab);
	
	
}
if (sc_getKey(global.btSk2, gp_shoulderl, 0)) {
	if (nextIndex) room_goto(r_skInfo);
}

if (sc_getKey(global.btSk3, gp_shoulderr, 0)) {
	if (nextIndex) room_goto(r_tab);
}