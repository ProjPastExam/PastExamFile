/// @description Insert description here
// You can write your code in this editor
if (isT) {
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_font(f_kor);
	draw_set_color(c_white);
	if (alarm[1] < 30) draw_set_alpha((30-alarm[1])/30);
	draw_text(x, y, text);
}