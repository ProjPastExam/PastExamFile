/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_dmg);
if (lifeTime < 20)	draw_set_alpha(lifeTime/20);
else				draw_set_alpha(1);


if (isCt)	
{
	draw_set_color(c_black);
	draw_text(x+3, y + lifeTime*2, int64(dmg));
	draw_text(x-3, y + lifeTime*2, int64(dmg));
	draw_text(x, y+3 + lifeTime*2, int64(dmg));
	draw_text(x, y-3 + lifeTime*2, int64(dmg));
}

switch(colo) {
case 0: draw_set_color(c_aqua); break;
case 1: draw_set_color(c_yellow); break;
case 2: draw_set_color(c_red); break;
}
draw_text(x, y + lifeTime*2, int64(dmg));
draw_set_alpha(1);