// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_costIndexPrint(_costIndex, _x = 0, _y = 0){
	draw_sprite(sp_sell_cost, 0, x-25+_x, y+_y);
	draw_set_halign(fa_left);
	draw_set_font(f_dmg);
	
	draw_set_color(c_white);
	draw_text(x+_x-2, y+_y, _costIndex);
	draw_text(x+_x+2, y+_y, _costIndex);
	draw_text(x+_x, y+_y-2, _costIndex);
	draw_text(x+_x, y+_y+2, _costIndex);
	draw_set_color(c_black);
	if (global.money >= _costIndex)	draw_set_color(c_black);
	else							draw_set_color(c_red);
	draw_text(x+_x, y+_y, _costIndex);
}
