/// @description Insert description here
// You can write your code in this editor


if (sc_getKey(global.btTap, global.gpTap, 0) ) {
	room_goto(global.roomBuffer);
}

if (sc_getKey(global.btEsc, global.gpEsc, 0) ) {
	room_goto(r_setting);
}

if (sc_getKey(global.btSk2, gp_shoulderl, 0)) {
	room_goto(r_setting);
}

if (sc_getKey(global.btSk3, gp_shoulderr, 0)) {
	room_goto(r_skInfo);
}

hpProcess = 0;
sc_itemSprite();

with (ob_tabSkBox) {tabIndex = other.tabIndex;}
with (ob_tabItemBox) {tabIndex = other.tabIndex;}
with (ob_tabSelectImage) {tabIndex = other.tabIndex;}
with (ob_tabInter) {tabIndex = other.tabIndex;}
with (ob_tabInterB) {interIndex = other.interIndex;}

if (sc_getKey(global.btLeft, gp_padl, 0)) {
	if (tabIndex == 0 || tabIndex == 3 || tabIndex == 6) { tabIndex += 2; }
	else { tabIndex--; }
}

if (sc_getKey(global.btRight, gp_padr, 0)) {
	if (tabIndex == 2 || tabIndex == 5 || tabIndex == 8) { tabIndex -= 2; }
	else { tabIndex++; }
}

if (sc_getKey(global.btUp, gp_padu, 0)) {
	if (tabIndex < 3) { tabIndex += 6; }
	else { tabIndex -= 3; }
}

if (sc_getKey(global.btDown, gp_padd, 0)) {
	if (tabIndex > 5) { tabIndex -= 6; }
	else { tabIndex += 3; }
}

if (tabIndex > 2) {
	if (sc_getKey(global.btInter, global.gpInter, 1)) {
		interIndex++;
		skState = 0;
	}
	else {
		if (interIndex > 0) interIndex--;
		//else interIndex++;
	}
	if (interIndex >= 60) {
		interIndex = -30;
		with (ob_tabItemBox) {isBreak = true;}
	}
}
else {
	interIndex = 0;
}

//스킬 UI 설정
with (ob_tabSkInfo) {
	state = other.tabIndex;
}

if (skState2 != 0) {
	if (skState == 0) skState2 = 0;
	else {
		if (skState == 1) {
			if (skState2 == 2) {
				var buffer = global.sk1;
				global.sk1 = global.sk2;
				global.sk2 = buffer;
				
				global.skKul[0] = buffer;
				global.skKul[0] = global.skKul[1];
				global.skKul[1] = buffer;
			}
			if (skState2 == 3) {
				var buffer = global.sk1;
				global.sk1 = global.sk3;
				global.sk3 = buffer;
				
				global.skKul[0] = buffer;
				global.skKul[0] = global.skKul[2];
				global.skKul[2] = buffer;
			}
		}
		if (skState == 2) {
			if (skState2 == 1) {
				var buffer = global.sk2;
				global.sk2 = global.sk1;
				global.sk1 = buffer;
				
				global.skKul[1] = buffer;
				global.skKul[1] = global.skKul[0];
				global.skKul[0] = buffer;
			}
			if (skState2 == 3) {
				var buffer = global.sk2;
				global.sk2 = global.sk3;
				global.sk3 = buffer;
				
				global.skKul[1] = buffer;
				global.skKul[1] = global.skKul[2];
				global.skKul[2] = buffer;
			}
		}
		if (skState == 3) {
			if (skState2 == 1) {
				var buffer = global.sk3;
				global.sk3 = global.sk1;
				global.sk1 = buffer;
				
				global.skKul[2] = buffer;
				global.skKul[2] = global.skKul[0];
				global.skKul[0] = buffer;
			}
			if (skState2 == 2) {
				var buffer = global.sk3;
				global.sk3 = global.sk2;
				global.sk2 = buffer;
				
				global.skKul[2] = buffer;
				global.skKul[2] = global.skKul[1];
				global.skKul[1] = buffer;
			}
		}
	}
	skState = 0;
	skState2 = 0;
}