/// @description Insert description here
// You can write your code in this editor

if (isCol) {
	draw_sprite(sp_text_rest, global.lan, x-20, y+135);
	sc_buttonPrint(global.btInter, global.gpInter, x-60, y+135);
	//draw_sprite(sc_keySprite(global.btInter), 0, x-50, y+135);
	draw_sprite(sp_sell_heart, healIndex, x-50, y+80);
	draw_sprite(sp_sell_cost, 0, x+30, y+80);
	draw_set_halign(fa_left);
	draw_set_font(f_dmg);
	
	draw_set_color(c_white);
	draw_text(x+48, y+80, costIndex);
	draw_text(x+52, y+80, costIndex);
	draw_text(x+50, y+78, costIndex);
	draw_text(x+50, y+82, costIndex);
	draw_set_color(c_black);
	if (global.money >= costIndex)	draw_set_color(c_black);
	else							draw_set_color(c_red);
	draw_text(x+50, y+80, costIndex);
	isCol = false;
}
