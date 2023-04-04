/// @description Insert description here
// You can write your code in this editor

if (touch) {
	
	//draw_sprite_ext(skInfo[skNum], 0, x+280, y-100, 0.5, 0.5, 0, c_white, 1);
	draw_sprite(sp_itemUi_InfoBox, global.lan, x+280, y-100);
	draw_sprite_ext(infoSprite, itemGrade-1 + global.lan*3, x+280, y-100, 0.75, 0.75, 0, c_white, 1);
	//draw_sprite(sc_keySprite(global.btInter), 0, x+220, y+135);
	sc_buttonPrint(global.btInter, global.gpInter, x+220, y+135);
	
	//draw_sprite_ext(sc_itemScaleSprite(itemKind, itemBuff), itemGrade-1, x+130, y+40, 3/4, 3/4, 0, c_white, 1);
	touch = false;
}