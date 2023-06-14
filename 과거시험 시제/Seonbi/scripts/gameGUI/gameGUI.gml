// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_gameGUI(){
	draw_sprite(sp_uiOutline, 0, 0, 0);
	
	var GUIX = global.UIX;
	var GUIY = global.UIY;
	var GUISX = global.UISkX;
	var GUISY = global.UISkY;
	draw_set_alpha(1);
	var i = 1;
	draw_sprite_stretched(sp_mpbar, 0, GUIX-10, GUIY+100, 720, 96);
	draw_sprite_stretched(sp_healthbar, global.hp, GUIX-100, GUIY-15, 900, 192);
	//draw_sprite(sp_skillBoxOut, 0, GUIX+203, GUIY+245);
	
	for ( i = 1; i <= 10; i++ ) {
		if ( global.hpMax >= i ) {
			if ( global.hp >= i )
				draw_sprite_stretched(sp_heart, 0, GUIX+70+(50*i), GUIY+15-(i%2-1)*25,80, 80);
			else {
				if ( global.hp == i - 1 && hpProcess > 0)
					draw_sprite_stretched(sp_heart, 1+(24-hpProcess)/6, GUIX+70+(50*i), GUIY+15-(i%2-1)*25,80, 80);
				else
					draw_sprite_stretched(sp_heart, 4, GUIX+70+(50*i), GUIY+15-(i%2-1)*25,80, 80);
			}
		}
	}
	
	
	
	for ( i = 9; i >= 0; i-- ) {
		if ( global.mpMax >= i * 100 ) {
			if ( global.mp >= i * 100 + 100) {
				if (i%2 == 1)
					draw_sprite_stretched(sp_mana, 10, GUIX+(66*i), GUIY+100,96, 96);
				else
					draw_sprite_stretched(sp_mana, 11, GUIX+(66*i), GUIY+100,96, 96);
			}
			else if ( global.mp >= i * 100)
				draw_sprite_stretched(sp_mana, (global.mp - i*100) / 10, GUIX+(66*i), GUIY+100,96, 96);
			else
				draw_sprite_stretched(sp_mana, 0, GUIX+(66*i), GUIY+100,96, 96);
		}
	}
	
	//스킬 UI 표시
	{
	var en = c_white;
	if (global.skMp[global.sk1] > global.mp) en = c_gray;
	draw_sprite_ext(skUi[global.sk1], 0, GUISX, GUISY+37, 1, 1, 0, en, 1);
	
	en = c_white;
	if (global.skMp[global.sk2] > global.mp) en = c_gray;
	draw_sprite_ext(skUi[global.sk2], 0, GUISX+110, GUISY+37, 1, 1, 0, en, 1);
	
	en = c_white;
	if (global.skMp[global.sk3] > global.mp) en = c_gray;
	draw_sprite_ext(skUi[global.sk3], 0, GUISX+220, GUISY+37, 1, 1, 0, en, 1);
	
	
	draw_sprite_ext(sp_skillUi_black, 0, GUISX, GUISY, 1, global.skKul[0]/global.skKulData[global.sk1], 0, c_white, 0.5);
	draw_sprite_ext(sp_skillUi_black, 0, GUISX+110, GUISY, 1, global.skKul[1]/global.skKulData[global.sk2], 0, c_white, 0.5);
	draw_sprite_ext(sp_skillUi_black, 0, GUISX+220, GUISY, 1, global.skKul[2]/global.skKulData[global.sk3], 0, c_white, 0.5);
	
	
	
	
	var skMpVar = 0;
	
	skMpVar = (global.skMp[global.sk1]/100);
	draw_sprite(sp_skillBox, skMpVar, GUISX, GUISY+37);
	
	skMpVar = (global.skMp[global.sk2]/100);
	draw_sprite(sp_skillBox, skMpVar, GUISX+110, GUISY+37);
	
	skMpVar = (global.skMp[global.sk3]/100);
	draw_sprite(sp_skillBox, skMpVar, GUISX+220, GUISY+37);
	
	draw_sprite_ext(sp_uiLowHp, 0, 0, 0, 1, 1, 0, c_white, (4-global.hp)/6);
	}
}


function sc_gameCombUi(actionX = 0){
	draw_sprite(sp_combBox, 0, global.comX + actionX, global.comY);
	draw_set_halign(fa_left);
	draw_set_font(f_bigNum);
	
	draw_set_color(c_black);
	var lanText = " 연타";
	if (global.lan == 1) lanText = " Combo"
	var ctText = string(int64(global.comCt)) + lanText;
	draw_text(global.comX + 60 + actionX * 4, global.comY - 15, ctText);
	draw_text(global.comX + 60 + actionX * 4, global.comY - 25, ctText);
	draw_text(global.comX + 65 + actionX * 4, global.comY - 20, ctText);
	draw_text(global.comX + 55 + actionX * 4, global.comY - 20, ctText);
	draw_set_color(c_white);
	draw_text(global.comX + 60 + actionX * 4, global.comY - 20, ctText);
}

function sc_gameHpUI() {
	if (global.uiHpIndex > global.uiHp+100) global.uiHpIndex -= 4;
	else if (global.uiHpIndex > global.uiHp) global.uiHpIndex--;
	
	var index1 = global.uiHp/global.uiHpMax;
	var index2 = global.uiHpIndex/global.uiHpMax;
	if (index1 < 0) index1 = 0;
	if (index2 < 0) index2 = 0;
	
	draw_sprite(sp_uiHpCir, 0, global.hpX, global.hpY);
	if (global.uiHpCir != noone)	draw_sprite(global.uiHpCir, 0, global.hpX, global.hpY);
	draw_sprite(sp_uiHpBack, 0, global.hpX, global.hpY);
	draw_sprite_ext(sp_uiHpMiddle, 0, global.hpX, global.hpY, index2, 1, 0, c_white, 1);
	draw_sprite_ext(sp_uiHpFront, 0, global.hpX, global.hpY, index1, 1, 0, c_white, 1);
	
	draw_sprite(sp_uiHpBox, 0, global.hpX, global.hpY);
}

function sc_printMoney(var_mode = 0) {
	var i = 0;
	if (global.clearStage >= 5) i = 1;
	
	draw_sprite(sp_moneyBox, i, global.moneyX, global.moneyY);
	
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_set_font(f_dmg);
	draw_set_color(c_white);
	
	if (var_mode == 0) {
		if	(moneyPrint < global.money)	{
			if	(moneyPrint < global.money - 100)	moneyPrint += 10;
			else									moneyPrint++;
		}
		else if	(moneyPrint > global.money)	{
			if	(moneyPrint > global.money + 100)	moneyPrint -= 10;
			else									moneyPrint--;
		}
		draw_text(global.moneyX - 55, global.moneyY+2, moneyPrint);
		
		if (global.clearStage >= 5) {
			if		(abSoulPrint < global.abSoul)	abSoulPrint++;
			else if	(abSoulPrint > global.abSoul)	abSoulPrint--;
			
			draw_set_halign(fa_left);
			draw_text(global.moneyX + 0, global.moneyY+2, global.abPointMax);
			
			if (global.abPointMax < 40) {
				draw_set_halign(fa_right);
				draw_text(global.moneyX + 100, global.moneyY+2, abSoulPrint);
				draw_text(global.moneyX + 115, global.moneyY+2, "/");
				
				draw_set_halign(fa_left);
				draw_text(global.moneyX + 120, global.moneyY+2, global.abSoulMax);
			}
			else {
				draw_set_halign(fa_center);
				draw_text(global.moneyX + 115, global.moneyY+2, "MAX");
			}
		}
	}
	else if (var_mode == 1) {
		draw_set_halign(fa_right);
		draw_text(global.moneyX - 55, global.moneyY, global.money);
		
		if (global.clearStage >= 5) {
			draw_set_halign(fa_left);
			draw_text(global.moneyX + 0, global.moneyY, global.abPointMax);
			
			if (global.abPointMax < 40) {
				draw_set_halign(fa_right);
				draw_text(global.moneyX + 100, global.moneyY, global.abSoul);
				draw_text(global.moneyX + 115, global.moneyY, "/");
				
				draw_set_halign(fa_left);
				draw_text(global.moneyX + 120, global.moneyY, global.abSoulMax);
			}
			else {
				draw_set_halign(fa_center);
				draw_text(global.moneyX + 115, global.moneyY, "MAX");
			}
		}
	}
	
		
}

function sc_mousePrint(mAlpah = 1) {
	draw_sprite_ext(sp_mouseIcon, 0, mouse_x, mouse_y, 1, 1, 0, c_white, mAlpah);
}

function sc_printTalk(isTalk) {
	if (isTalk == 5) {
		draw_sprite(sp_talk, talkZ, talkX, talkY);
	}
	
	draw_sprite(sp_black2, 0, 0, 0);
	draw_sprite(sp_talkUI, 0, 960, 350);
	draw_sprite(npcFace, 0, 0, 0);
	sc_buttonPrint(global.btAtk, global.gpAtk, 270, 520);
	//draw_sprite(sc_keySprite(global.btAtk), 0, 270, 540);
	draw_sprite(sp_text_next, global.lan, 310, 520);
	
	
	draw_set_font(f_kor);
	draw_set_color(c_black);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text_transformed(270, 160, nameS, 1.3, 1.3, 0);
	
	if (isTalk == 1) {
		draw_text_ext(280, 250, talkString, 65, 1100);
		
		//draw_sprite(sc_keySprite(global.btEsc), 0, 510, 540);
		//draw_sprite(sp_text_quite, 0, 640, 520);
	}
	
	if (isTalk == 2) {
		for (var i = 0; i < questionNum; i++) {
			draw_text(280, 250 + i*70, questionString[i].talkString[global.lan]);
		}
		
		draw_sprite(sp_questionSelect, 0, 210, 280 + questionState*70);
		draw_set_color(c_white);
		draw_text(280, 250 + questionState*70, questionString[questionState].talkString[global.lan]);
		draw_set_color(c_black);
		//draw_sprite(sc_keySprite(global.btEsc), 0, 510, 540);
		//draw_sprite(sp_text_quite, 0, 640, 520);
	}
	
	if (isTalk == 5) {
		draw_text_ext(280, 250, talkArray[0], 65, 1100);
	}
}