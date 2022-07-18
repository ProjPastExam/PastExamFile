/// @description Insert description here
// You can write your code in this editor
//draw_text(50, 50, mobNum);

if (isCt) {
	draw_sprite_stretched_ext(sp_black, 0, 0, 0, 2400, 150, 0, 1);
	draw_sprite_stretched_ext(sp_black, 0, 0, 930, 2400, 150, 0, 1);
	draw_sprite(sp_text_quite, 0, 1820, 1020);
	draw_sprite(sc_keySprite(global.btEsc), 0, 1680, 1020);
}

if (isGUI) {
	sc_gameGUI();
	//if (isMinimap) { sc_drawMiniMap(0, 0) };
	if (isMinimap) sc_drawMap();
	
	if (global.comCt > 0) {
		if (global.comCt > 100) global.comCt = 100;
		draw_sprite(sp_combBox, 0, 100, 395);
		draw_set_halign(fa_left);
		draw_set_font(f_bigNum); 
		
		draw_set_color(c_black);
		draw_text(100 + 100, 380, int64(global.comCt));
		draw_text(100 + 100, 370, int64(global.comCt));
		draw_text(100 + 105, 375, int64(global.comCt));
		draw_text(100 + 95, 375, int64(global.comCt));
		draw_set_color(c_white);
		draw_text(100 + 100, 375, int64(global.comCt));
		
		
	}
}
draw_sprite_stretched_ext(sp_black, 0, 0, 0, 2400, 1500, 0 ,dark/30);

if (pause == -1) {
	draw_sprite(sp_demoPause, 0, 0, 0);
}
else if (pause == -10 || pause == -21) {
	draw_sprite(sp_black2, 0, 0, 0);
}



if (isTalk == 2) {
	draw_sprite(sp_black2, 0, 0, 0);
	draw_sprite(npcFace, 0, 1455, 110);
	draw_sprite(sp_demoTalk, 0, 960, 350);
	draw_sprite(sc_keySprite(global.btAtk), 0, 240, 540);
	draw_sprite(sp_text_next, 0, 350, 540);
	draw_sprite(sc_keySprite(global.btEsc), 0, 480, 540);
	draw_sprite(sp_text_quite, 0, 610, 540);
	
	draw_set_font(f_kor);
	draw_set_color(c_black);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(250, 140, nameS);
	draw_text(250, 230, talkArray[talkCnt]);
}
else if ( isTalk == 5) {
	draw_sprite(sp_talk, 0, talkX, talkY);
	draw_sprite(sp_black2, 0, 0, 0);
	draw_sprite(npcFace, 0, 1455, 110);
	draw_sprite(sp_demoTalk, 0, 960, 350);
	draw_sprite(sc_keySprite(global.btAtk), 0, 240, 540);
	draw_sprite(sp_text_next, 0, 350, 540);
	
	
	draw_set_font(f_kor);
	draw_set_color(c_black);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(250, 140, nameS);
	draw_text(250, 230, talkArray[0]);
}
else if (isTalk == 6) {
	draw_sprite(sp_talkMul, talkZ, talkX, talkY);
}
else if (isTalk == 7) {
	draw_sprite(sp_talkNug, talkZ, talkX, talkY);
}
else if (isTalk == 8) {
	draw_sprite(sp_talk2, talkZ, talkX, talkY);
}

