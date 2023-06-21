/// @description Insert description here
// You can write your code in this editor

printText = sc_csvToString(textFile, csvVer + global.lan, state+1);

draw_self();
var scale = 1.3;
if (global.lan == 1) scale = 1;
draw_set_halign(fa_left);
draw_set_font(f_kor);
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_text_ext_transformed(x+300, y+290, printText, 60, 1500, scale, scale, 0);
