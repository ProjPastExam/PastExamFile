/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(global.btEsc) ) {
	room_goto(global.roomBuffer);
}

if (keyboard_check_pressed(global.btLeft) ) {
	if (sIndex == 2 || sIndex == 3 || sIndex == 5 || sIndex == 6 || sIndex == 8 || sIndex == 9) {
		sIndex--;
	}
	else {
		sIndex += 2;
	}
}

if (keyboard_check_pressed(global.btRight) ) {
	if (sIndex == 1 || sIndex == 2 || sIndex == 5 || sIndex == 4 || sIndex == 8 || sIndex == 7) {
		sIndex++;
	}
	else {
		sIndex -= 2;
	}
}

if (keyboard_check_pressed(global.btUp) ) {
	if (sIndex == 1 || sIndex == 2 || sIndex == 3) {
		sIndex += 6;
	}
	else {
		sIndex -= 3;
	}
}

if (keyboard_check_pressed(global.btDown) ) {
	if (sIndex == 7 || sIndex == 8 || sIndex == 9) {
		sIndex -= 6;
	}
	else {
		sIndex += 3;
	}
}

with (ob_enhanceIcon) {
	sIndex = other.sIndex;
}