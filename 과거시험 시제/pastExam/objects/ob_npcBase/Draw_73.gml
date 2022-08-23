/// @description Insert description here
// You can write your code in this editor
if (isCollision) {
	draw_sprite(sp_demoSpeak, 0, x, bbox_bottom + 50);
	draw_sprite(sc_keySprite(global.btInter), 0, x-75, bbox_bottom + 50);
}

if (ob_roomControl.isTalk == 2) {
	draw_sprite(sp_talk, 0, x, bbox_top - 90);
}