/// @description Insert description here
// You can write your code in this editor
if (sprite_index != NULL) {
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);
	
	if (state < 3) {
		var i = 0;
		if (state == 0) i = global.sk1;
		else if (state == 1) i = global.sk2;
		else if (state == 2) i = global.sk3;
		
		if (i > 100) {
			draw_sprite(sp_skInfoIcon, 0, x, y+200);
			draw_set_halign(fa_left);
			draw_set_font(f_kor);
			draw_set_color(c_black);
			draw_text(x-140, y+200, int64(global.skMp[i]/100));
			draw_text(x-40, y+200, int64(global.skKulData[i]/60));
		}
	}
	else {
		if (global.itemGet[state - 3] != NULL) {
			var _itemKind	= global.itemGet[state-3].itemKind;
			var _itemGrade	= global.itemGet[state-3].itemGrade;
			var _itemBuff	= global.itemGet[state-3].itemBuff;
			
			draw_sprite(sc_itemScaleSprite(_itemKind, _itemBuff), _itemGrade-1, x-200, y+200)
		}
	}
}
	

