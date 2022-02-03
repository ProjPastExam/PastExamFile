/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(global.btTap)) {
	room_goto(global.roomBuffer);
}
hpProcess = 0;
sc_itemSprite();

with (ob_tabSkBox) {tabIndex = other.tabIndex;}
with (ob_tabItemBox) {tabIndex = other.tabIndex;}
with (ob_tabSelectImage) {tabIndex = other.tabIndex;}

if (keyboard_check_pressed(global.btLeft)) {
	if (tabIndex == 0 || tabIndex == 3 || tabIndex == 6) { tabIndex += 2; }
	else { tabIndex--; }
}

if (keyboard_check_pressed(global.btRight)) {
	if (tabIndex == 2 || tabIndex == 5 || tabIndex == 8) { tabIndex -= 2; }
	else { tabIndex++; }
}

if (keyboard_check_pressed(global.btUp)) {
	if (tabIndex < 3) { tabIndex += 6; }
	else { tabIndex -= 3; }
}

if (keyboard_check_pressed(global.btDown)) {
	if (tabIndex > 5) { tabIndex -= 6; }
	else { tabIndex += 3; }
}

//스킬 UI 설정
sc_skillUi();

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