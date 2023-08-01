/// @description Insert description here
// You can write your code in this editor
//draw_text(50, 50, mobNum);

if (isCt) {
	draw_sprite_stretched_ext(sp_black, 0, 0, 0, 2400, 150, 0, 1);
	draw_sprite_stretched_ext(sp_black, 0, 0, 930, 2400, 150, 0, 1);
	draw_sprite(sp_text_quite, global.lan, 120, 1020);
	sc_buttonPrint(global.btEsc, global.gpEsc, 80, 1020);
	//draw_sprite(sc_keySprite(global.btEsc), 0, 1680, 1020);
}

if (isGUI) {
	draw_set_alpha(uiAlpIndex);
	if (ctIndex < global.comCt) {
		alarm[2] = 10;
	}
	ctIndex = global.comCt
	if (global.comCt > 0) {
		sc_gameCombUi(alarm[2]);
	}
	
	if (isHpUI) sc_gameHpUI();
	
	if (isMinimap) sc_drawMap();
	
	sc_gameGUI();
	
	sc_printMoney();
	draw_set_alpha(1);
}
draw_sprite_stretched_ext(sp_black, 0, 0, 0, 2400, 1500, 0 ,dark/30);
/*
if (pause == -1) {
	draw_sprite(sp_demoPause, 0, 0, 0);
}
*/
if (pause == -10 || pause == -21) {
	draw_sprite(sp_black2, 0, 0, 0);
}



if (isTalk == 1 || isTalk == 2 || isTalk == 5) {
	sc_printTalk(isTalk);
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

