/// @description Insert description here
// You can write your code in this editor


if (touch) {
	/*
	draw_set_halign(fa_center);
	draw_set_font(f_dmg);
	draw_set_color(c_white);
	draw_text(x+2, y+80, coinIndex);
	draw_text(x-2, y+80, coinIndex);
	draw_text(x, y+82, coinIndex);
	draw_text(x, y+78, coinIndex);
	
	draw_set_color(c_black);
	draw_text(x, y+80, coinIndex);
	*/
	
	draw_sprite(sp_text_get, 0, x+50, y+135);
	sc_buttonPrint(global.btInter, global.gpInter, x-50, y+135);
	touch = false;
}
