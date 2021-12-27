/// @description Insert description here
// You can write your code in this editor
draw_sprite(sprite_index, 0, x, y+8*sin(sin_t/12));

if (touch) {
	draw_sprite(infoSprite, 0, x+240, y-80);
	//draw_sprite_ext(skInfo[skNum], 0, x+280, y-100, 0.5, 0.5, 0, c_white, 1);
	draw_sprite(sp_skillUi_InfoBox, 0, x+280, y-100);
	draw_sprite(sc_keySprite(global.btInter), 0, x+220, y+110);
	var text;
	if (itemStat[0] != 0) {
		
	}
	touch = false;
}