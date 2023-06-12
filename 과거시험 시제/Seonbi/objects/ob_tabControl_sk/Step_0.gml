/// @description Insert description here
// You can write your code in this editor
if (sc_getKey(global.btTap, global.gpTap, 0) || sc_getKey(global.btEsc, global.gpEsc, 0)) {
	room_goto(global.roomBuffer);
}
hpProcess = 0;
sc_itemSprite();

with (ob_tabSkBox) {tabIndex = other.tabIndex;}
//with (ob_tabItemBox) {tabIndex = other.tabIndex;}
with (ob_tabSelectImage) {tabIndex = other.tabIndex;}
//with (ob_tabInter) {tabIndex = other.tabIndex;}
with (ob_tabInterB) {interIndex = other.interIndex;}

if (sc_getKey(global.btLeft, gp_padl, 0)) {
	if (tabIndex == 0) { tabIndex += 2; }
	else { tabIndex--; }
}

if (sc_getKey(global.btRight, gp_padr, 0)) {
	if (tabIndex == 2) { tabIndex -= 2; }
	else { tabIndex++; }
}

//스킬 UI 설정
sc_skillUi();

if (sc_getKey(global.btInter, gp_face4, 1)) {
	interIndex++;
}
else {
	if (interIndex > 0) interIndex--;
	//else interIndex++;
}
if (interIndex >= 60) {
	with (ob_tabSkBox_DS) {
		active = true;
	}
}