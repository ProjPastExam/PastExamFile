/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_dmg);
if (lifeTime < 20)	draw_set_alpha(lifeTime/20);
else				draw_set_alpha(1);
draw_text(x, y + lifeTime*2, dmg);