/// @description Insert description here
// You can write your code in this editor
draw_sprite(itemSp[itemNum], itemGrade, x, y+8*sin(sin_t/12));

if (touch) {
	draw_sprite(itemIn[itemNum], itemGrade, x+240, y-80);
	touch = false;
}