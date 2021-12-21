/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(global.btTap)) {
	room_goto(global.roomBuffer);
}
hpProcess = 0;
sc_itemSprite();

//스킬 UI 설정
sc_skillUi();