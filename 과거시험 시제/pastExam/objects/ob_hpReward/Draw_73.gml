/// @description Insert description here
// You can write your code in this editor

if (touch) {
	draw_sprite(sp_text_rest, 0, x+50, y+135);
	sc_buttonPrint(global.btInter, global.gpInter, x-50, y+135);
	//draw_sprite(sc_keySprite(global.btInter), 0, x-50, y+135);
	draw_sprite(sp_sell_heart, 1, x, y+80);
	touch = false;
}
