/// @description Insert description here
// You can write your code in this editor

draw_self();
var scale = 1.3;
if (global.lan == 1) scale = 1;
draw_set_halign(fa_left);
draw_set_font(f_kor);
draw_set_color(c_white);
draw_set_alpha(image_alpha*1.5);
draw_text_ext_transformed(x+300, y+15, printText, 60, 1500, scale, scale, 0);
