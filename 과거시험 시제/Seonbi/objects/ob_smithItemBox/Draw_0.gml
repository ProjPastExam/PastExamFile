/// @description Insert description here
// You can write your code in this editor
var backCol = c_white;
if (global.itemNum <= itemNum) backCol = c_gray;

var frame = 0;
if (itemValue != -1) frame = itemGrade-1;
draw_sprite_ext(backSprite, frame, x, y, 1, 1, 0, backCol, 1);
if (itemSprite != NULL)	draw_sprite_ext(itemSprite, 0, x, y, 1, 1, 0, c_white, 1);
//draw_self();

if (state == itemNum) {
	draw_sprite(sp_tabSelect, 0, x, y);
	if (select != 0) { draw_sprite(sp_smithSelectItem, 0, x, y); }
}