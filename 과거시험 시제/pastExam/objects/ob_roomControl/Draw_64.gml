/// @description Insert description here
// You can write your code in this editor
if (isCt) {
	draw_sprite_stretched_ext(sp_black, 0, 0, 0, 1920, 150, 0, 1);
	draw_sprite_stretched_ext(sp_black, 0, 0, 930, 1920, 150, 0, 1);
	draw_sprite(sp_text_quite, 0, 1820, 100);
	draw_sprite(sc_keySprite(global.btEsc), 0, 1780, 100);
}

if (isGUI) sc_gameGUI();
draw_sprite_stretched_ext(sp_black, 0, 0, 0, 1920, 1080, 0 ,dark/30);
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

