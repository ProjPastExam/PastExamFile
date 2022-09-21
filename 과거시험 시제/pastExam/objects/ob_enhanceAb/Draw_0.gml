/// @description Insert description here
// You can write your code in this editor


draw_self();

draw_set_font(f_bigNum);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text_transformed(x, y-40, global.abPointMax, 0.6, 0.6, 0);
draw_text_transformed(x, y+110, global.abPoint, 0.6, 0.6, 0);