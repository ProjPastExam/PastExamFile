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

if (keyboard_check_pressed(global.btUp)) {
	if (state == 0 || state == 8) {
		state += 7;
	}
	else {
		state -= 1;
	}
}

if (keyboard_check_pressed(global.btDown)) {
	if (state == 7 || state == 15) {
		state -= 7;
	}
	else {
		state += 1;
	}
}

if (keyboard_check_pressed(global.btLeft)) {
	if (state < 8) {
		state += 8;
	}
	else {
		state -= 8;
	}
}

if (keyboard_check_pressed(global.btRight)) {
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