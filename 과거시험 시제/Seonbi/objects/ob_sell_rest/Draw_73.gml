/// @description Insert description here
// You can write your code in this editor

if (isCol) {
	draw_sprite(sp_saveUi_InfoBox, global.lan, x+280, y-100);
	draw_sprite_ext(sp_saveInfo, global.lan, x+280, y-100, 0.75, 0.75, 0, c_white, 1);
	sc_buttonPrint(global.btInter, global.gpInter, x+220, y+135);
	
	sc_costIndexPrint(costIndex, 280, 190);
	isCol = false;
}
