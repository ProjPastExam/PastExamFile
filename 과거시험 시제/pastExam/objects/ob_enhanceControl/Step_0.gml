/// @description Insert description here
// You can write your code in this editor
if (sc_getKey(global.btEsc, global.gpEsc, 0) ) {
	room_goto(global.roomBuffer);
}

if (sc_getKey(global.btLeft, gp_padl, 0) && !interIndex ) {
	if (sIndex == 2 || sIndex == 3 || sIndex == 5 || sIndex == 6 || sIndex == 8 || sIndex == 9) {
		sIndex--;
	}
	else {
		sIndex += 2;
	}
}

if (sc_getKey(global.btRight, gp_padr, 0) && !interIndex ) {
	if (sIndex == 1 || sIndex == 2 || sIndex == 5 || sIndex == 4 || sIndex == 8 || sIndex == 7) {
		sIndex++;
	}
	else {
		sIndex -= 2;
	}
}

if (sc_getKey(global.btUp, gp_padu, 0) && !interIndex ) {
	if (sIndex == 1 || sIndex == 2 || sIndex == 3) {
		sIndex += 6;
	}
	else {
		sIndex -= 3;
	}
}

if (sc_getKey(global.btDown, gp_padd, 0) && !interIndex ) {
	if (sIndex == 7 || sIndex == 8 || sIndex == 9) {
		sIndex -= 6;
	}
	else {
		sIndex += 3;
	}
}

if (sc_getKey(global.btInter, gp_face4, 0) ) {
	if (interIndex) {
		interIndex = false;
	}
	else {
		interIndex = true;
	}
}

with (ob_enhanceIcon) {
	sIndex = other.sIndex;
	interIndex = other.interIndex;
}

with (ob_enhanceBtLeft) {
	sIndex = other.sIndex;
	interIndex = other.interIndex;
}

with (ob_enhanceBtRight) {
	sIndex = other.sIndex;
	interIndex = other.interIndex;
}

with (ob_enhanceEnhance) {
	sIndex = other.sIndex;
	interIndex = other.interIndex;
}