/// @description Insert description here
// You can write your code in this editor
if (sc_getKey(global.btTap, global.gpTap, 0) ) {
	room_goto(r_tab);
}

if (sc_getKey(global.btEsc, global.gpEsc, 0) ) {
	room_goto(r_setting);
}

if (sc_getKey(global.btSk2, gp_shoulderl, 0)) {
	room_goto(r_tab);
}

if (sc_getKey(global.btSk3, gp_shoulderr, 0)) {
	room_goto(r_itemInfo);
}

if (sc_getKey(global.btUp, global.gpUp, 0)) {
	if (state == 0 || state == 8) {
		state += 7;
	}
	else {
		state -= 1;
	}
}

if (sc_getKey(global.btDown, global.gpDown, 0)) {
	if (state == 7 || state == 15) {
		state -= 7;
	}
	else {
		state += 1;
	}
}

if (sc_getKey(global.btLeft, global.gpLeft, 0)) {
	if (state < 8) {
		state += 8;
	}
	else {
		state -= 8;
	}
}

if (sc_getKey(global.btRight, global.gpRight, 0)) {
	if (state < 8) {
		state += 8;
	}
	else {
		state -= 8;
	}
}

with (ob_guide) {
	state = other.state;
}

with (ob_guideInfo) {
	state = other.state;
}