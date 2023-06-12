/// @description Insert description here
// You can write your code in this editor

draw_self();
if (sIndex == enhanceNum) {
	draw_sprite(sp_enhanceIconSelect, 0, x, y);
	if (interIndex) {
		draw_sprite(sp_enhanceIconSelect2, 0, x, y);
	}
}

draw_sprite(sp_enhanceNum, 0, x, y+57);


draw_set_halign(fa_center);
draw_set_font(f_dmg);
draw_set_color(c_black);
	
draw_text(x, y+60, global.abIndex[enhanceNum-1]);