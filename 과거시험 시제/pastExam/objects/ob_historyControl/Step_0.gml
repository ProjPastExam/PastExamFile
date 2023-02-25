/// @description Insert description here
// You can write your code in this editor
if (sc_getKey(global.btTap, global.gpTap, 0) ) {
	room_goto(r_tab);
}

if (sc_getKey(global.btEsc, global.gpEsc, 0) ) {
	room_goto(global.roomBuffer);
}

if (sc_getKey(global.btSk2, gp_shoulderl, 0)) {
	room_goto(r_skInfo);
}

if (sc_getKey(global.btSk3, gp_shoulderr, 0)) {
	room_goto(r_setting);
}

