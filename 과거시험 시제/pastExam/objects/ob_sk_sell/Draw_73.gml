/// @description Insert description here
// You can write your code in this editor


if (touch) {
	draw_sprite(sp_skillUi_InfoBox, global.lan, x+280, y-100);
	draw_sprite_ext(skInfo[skNum], 0, x+280, y-100, 0.75, 0.75, 0, c_white, 1);
	
	draw_sprite_ext(sp_skInfoIcon, 0, x+280, y+50, 0.75, 0.75, 0, c_white, 1);
	draw_set_halign(fa_left);
	draw_set_font(f_kor);
	draw_set_color(c_black);
	draw_text(x+170, y+50, int64(global.skMp[skNum]/100));
	draw_text(x+240, y+50, int64(global.skKulData[skNum]/60));
	
	sc_buttonPrint(global.btInter, global.gpInter, x+220, y+135);
	
	sc_costIndexPrint(costIndex, 280, 190);
	//draw_sprite(sc_keySprite(global.btInter), 0, x+220, y+135);
	touch = false;
}

