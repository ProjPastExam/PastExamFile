/// @description Insert description here
// You can write your code in this editor
if (global.itemGet[state] != NULL) {
	draw_sprite_ext(global.itemGet[state].infoSprite, 
		global.itemGet[state].itemGrade-1 + global.lan*3, x, y, 1, 1, 0, c_white, 1);
	//var _itemKind	= global.itemGet[state].itemKind;
	//var _itemGrade	= global.itemGet[state].itemGrade;
	//var _itemBuff	= global.itemGet[state].itemBuff;
	
	//draw_sprite(sc_itemScaleSprite(_itemKind, _itemBuff), _itemGrade-1, x-200, y+200)
}

