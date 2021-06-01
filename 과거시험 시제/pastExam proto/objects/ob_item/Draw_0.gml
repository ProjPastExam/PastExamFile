/// @description Insert description here
// You can write your code in this editor
draw_sprite(itemSp[itemNum], itemGrade, x, y);

if (touch) {
	draw_sprite(itemIn[itemNum], 0, x+240, y-80);
	touch = false;
}