/// @description Insert description here
// You can write your code in this editor

/*
if (select == 0) {
	var col = #999999;
	draw_set_font(f_dmg);
	draw_set_color(col);
	draw_set_halign(fa_left);
	
	var enD = global.smith1;
	if (global.itemGet[state] != NULL) {
		enD = global.smith1 * global.itemGet[state].itemGrade;
		if (global.itemGet[state].itemGrade == 3) {
			enD = 0;
			col = #666666;
		}
	}
	draw_sprite_ext(sp_smithSelect1, 0, 260, 600, 1, 1, 0, col, 1);
	draw_text(600, 600, enD);
	
	col = #999999;
	draw_sprite_ext(sp_smithSelect1, 1, 260, 680, 1, 1, 0, col, 1);
	draw_text(600, 680, global.smith2);
	
	draw_sprite_ext(sp_smithSelect1, 2, 260, 760, 1, 1, 0, col, 1);
	draw_text(600, 760, global.smith3);
	
	draw_sprite_ext(sp_smithSelect1, 3, 260, 840, 1, 1, 0, col, 1);
}

if (select == 1) {
	var col = c_white;
	draw_set_font(f_dmg);
	draw_set_color(col);
	draw_set_halign(fa_left);
	
	var enD = global.smith1;
	if (global.itemGet[state] != NULL) {
		enD = global.smith1 * global.itemGet[state].itemGrade;
		if (global.itemGet[state].itemGrade == 3) {
			enD = 0;
			col = #999999;
		}
	}

	draw_sprite_ext(sp_smithSelect1, 0, 260, 600, 1, 1, 0, col, 1);
	draw_text(600, 600, enD);
	
	var col = c_white;
	draw_sprite_ext(sp_smithSelect1, 1, 260, 680, 1, 1, 0, col, 1);
	draw_text(600, 680, global.smith2);
	
	draw_sprite_ext(sp_smithSelect1, 2, 260, 760, 1, 1, 0, col, 1);
	draw_text(600, 760, global.smith3);
	
	draw_sprite_ext(sp_smithSelect1, 3, 260, 840, 1, 1, 0, col, 1);
	
	draw_sprite(sp_smithSelectSelect, 0, 260, 600 + (select2 * 80));
}
*/