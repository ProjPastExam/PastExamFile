/// @description Insert description here
// You can write your code in this editor
if (isActive) {
	
	draw_sprite(sp_black2, 0, 0, 0);
	draw_sprite_ext(sp_tuto_boss, global.lan, 0, 0, 1, 1, 0, c_white, alp/90);
	
	draw_sprite(sp_text_quite, global.lan, 360, 720);
	sc_buttonPrint(global.btInter, global.gpInter, 300, 720);
	//draw_sprite(sc_keySprite(global.btInter), 0, 300, 720);
}