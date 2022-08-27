/// @description Insert description here
// You can write your code in this editor


if (keyboard_check_pressed(global.btTap) || keyboard_check_pressed(global.btEsc)) {
	room_goto(global.roomBuffer);
}

hpProcess = 0;
sc_itemSprite();

//with (ob_tabSkBox) {tabIndex = other.tabIndex;}
with (ob_tabItemBox) {tabIndex = other.tabIndex;}
with (ob_tabSelectImage) {tabIndex = other.tabIndex;}
//with (ob_tabInter) {tabIndex = other.tabIndex;}
with (ob_tabInterB) {interIndex = other.interIndex;}

if (keyboard_check_pressed(global.btLeft)) {
	if (tabIndex == 0 || tabIndex == 3 || tabIndex == 6) { tabIndex += 2; }
	else { tabIndex--; }
}

if (keyboard_check_pressed(global.btRight)) {
	if (tabIndex == 2 || tabIndex == 5 || tabIndex == 8) { tabIndex -= 2; }
	else { tabIndex++; }
}

if (keyboard_check_pressed(global.btUp)) {
	if (tabIndex < 6) { tabIndex += 3; }
	else { tabIndex -= 3; }
}

if (keyboard_check_pressed(global.btDown)) {
	if (tabIndex > 5) { tabIndex -= 3; }
	else { tabIndex += 3; }
}


if (keyboard_check(global.btInter)) {
	interIndex++;
}
else {
	if (interIndex > 0) interIndex--;
	//else interIndex++;
}
if (interIndex >= 60) {
	with (ob_tabItemBox_DI) {
		active = true;
	}
}

