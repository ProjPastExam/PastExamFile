/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_font(f_bigNum);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text_transformed(x, y+5, "/", 0.6, 0.6, 0);

draw_set_halign(fa_right);
draw_text_transformed(x-30, y+5, global.abIndex[sIndex-1], 0.6, 0.6, 0);

draw_set_halign(fa_left);
draw_text_transformed(x+30, y+5, "10", 0.6, 0.6, 0);