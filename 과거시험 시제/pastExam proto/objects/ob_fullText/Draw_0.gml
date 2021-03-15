/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_kor);
draw_set_color(c_white);
if (alarm[0] < 30) draw_set_alpha(alarm[0]/30);
if (alarm[0] > 150) draw_set_alpha((180-alarm[0])/30);
if (p < num) draw_text(x-400, y, text[p]);