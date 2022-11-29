/// @description Insert description here
// You can write your code in this editor

if (touch) {
	
	//draw_sprite_ext(skInfo[skNum], 0, x+280, y-100, 0.5, 0.5, 0, c_white, 1);
	draw_sprite(sp_itemUi_InfoBox, 0, x+280, y-100);
	draw_sprite_ext(infoSprite, 0, x+280, y-100, 0.75, 0.75, 0, c_white, 1);
	//draw_sprite(sc_keySprite(global.btInter), 0, x+220, y+135);
	sc_buttonPrint(global.btInter, global.gpInter, x+220, y+135);
	
	//draw_sprite_ext(sc_itemScaleSprite(itemKind, itemBuff), itemGrade-1, x+130, y+40, 3/4, 3/4, 0, c_white, 1);
	touch = false;
}

draw_sprite(sp_sell_cost, 0, x-20, y+80);
draw_set_halign(fa_left);
draw_set_font(f_dmg);

draw_set_color(c_white);
draw_text(x+8, y+80, costIndex);
draw_text(x+12, y+80, costIndex);
draw_text(x+10, y+78, costIndex);
draw_text(x+10, y+82, costIndex);
draw_set_color(c_black);
if (global.money >= costIndex)	draw_set_color(c_black);
else							draw_set_color(c_red);
draw_text(x+10, y+80, costIndex);