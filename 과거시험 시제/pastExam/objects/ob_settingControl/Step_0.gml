/// @description Insert description here
// You can write your code in this editor

with (ob_keySet) {
	settingIndex = other.settingIndex;
}

if (keyboard_check_pressed(global.btTap)) {
	room_goto(r_tab);
}

nextIndex = true;
with (ob_keySet) {
	if (state == 2) other.nextIndex = false;
}

if (keyboard_check_pressed(global.btSk2)) {
	if (nextIndex) room_goto(r_itemInfo);
}

if (keyboard_check_pressed(global.btSk3)) {
	if (nextIndex) room_goto(r_tab);
}

if (keyboard_check_pressed(global.btLeft)) {
	if (settingIndex > 6 && settingIndex < 13) {
		settingIndex -= 7;
	}
}

if (keyboard_check_pressed(global.btRight)) {
	if (settingIndex < 6) {
		settingIndex += 7;
	}
	else if (settingIndex == 6) {
		settingIndex = 12;
	}
}

if (keyboard_check_pressed(global.btDown)) {
	if (settingIndex < 6) {
		settingIndex++;
	}
	else if (settingIndex > 6 && settingIndex < 12) {
		settingIndex++;
	}
	else if (settingIndex == 6) {
		settingIndex = 0;
	}
	else if (settingIndex == 12) {
		settingIndex = 7;
	}
}

if (keyboard_check_pressed(global.btUp)) {
	if (settingIndex < 7 && settingIndex > 0) {
		settingIndex--;
	}
	else if (settingIndex > 7 && settingIndex < 13) {
		settingIndex--;
	}
	else if (settingIndex == 0) {
		settingIndex = 6;
	}
	else if (settingIndex == 7) {
		settingIndex = 12;
	}
}
