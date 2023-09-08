/// @description Insert description here
// You can write your code in this editor
sc_steam_update();

if (sc_getKey(global.btTap, global.gpTap, 0) ) {
	room_goto(r_tab);
}

if (sc_getKey(global.btEsc, global.gpEsc, 0) ) {
	room_goto(global.roomBuffer);
}

if (sc_getKey(global.btSk2, gp_shoulderl, 0)) {
	room_goto(r_tab);
}

if (sc_getKey(global.btSk3, gp_shoulderr, 0)) {
	room_goto(r_setting);
}

if (sc_getKey(global.btUp, gp_padu, 0)) {
	if (state == 0 || state == 8) {
		state += 7;
	}
	else {
		state -= 1;
	}
}

if (sc_getKey(global.btDown, gp_padd, 0)) {
	if (state == 7 || state == 15) {
		state -= 7;
	}
	else {
		state += 1;
	}
}

if (sc_getKey(global.btLeft, gp_padl, 0)) {
	if (state < 8) {
		state += 8;
	}
	else {
		state -= 8;
	}
}

if (sc_getKey(global.btRight, gp_padr, 0)) {
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