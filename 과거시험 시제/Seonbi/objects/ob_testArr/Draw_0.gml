/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_font(f_dmg);
draw_set_color(c_black);
draw_text(x, y+80, global.testArr[0]);
draw_text(x, y, global.testArr[1]);
draw_text(x, y-80, global.testArr[2]);