/// @description Insert description here
// You can write your code in this editor
var col = #666666;
draw_set_font(f_kor);
draw_set_halign(fa_left);
	
if (select == 0) {
	if (global.itemGet[state] != NULL && global.itemGet[state].itemGrade < 3) {
		draw_sprite(sp_smithSelect1, global.lan, x, y);

		if (global.money < enD)	draw_set_color(c_red);
		else					draw_set_color(c_white);
		draw_text(x+330, y+0, enD);
	}
	else {
		draw_sprite_ext(sp_smithSelect1, global.lan, x, y, 1, 1, 0, col, 1);
	}
}
else if (select == 1) {
	draw_sprite(sp_smithSelect1, global.lan, x, y);
	if (select2 == 0)	draw_sprite(sp_smithSelectSelect, 0, x, y);
	
	if (global.money < enD)	draw_set_color(c_red);
	else					draw_set_color(c_white);
	draw_text(x+330, y+0, enD);
}
draw_self();