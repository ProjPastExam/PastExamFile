/// @description Insert description here
// You can write your code in this editor
if (global.itemGet[state] != NULL) {
	var backSprite = noone;
	
	if (global.itemGet[state].itemKind == 0) backSprite = sp_itemBackAtk;
	if (global.itemGet[state].itemKind == 1) backSprite = sp_itemBackKick;
	if (global.itemGet[state].itemKind == 2) backSprite = sp_itemBackFire;
	
	draw_sprite_ext(backSprite, global.itemGet[state].itemGrade-1, x, y, 1.5, 1.5, 0, c_white, 1);
	draw_sprite_ext(global.itemGet[state].itemSprite, 0, x, y, 1.5, 1.5, 0, c_white, 1);
}
