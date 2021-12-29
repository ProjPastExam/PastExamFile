// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_gameGUI(){
	var GUIX = 50;
	var GUIY = 20;
	draw_set_alpha(1);
	var i = 1;
	draw_sprite_stretched(sp_mpbar, 0, GUIX-10, GUIY+100, 720, 96);
	draw_sprite_stretched(sp_healthbar, global.hp, -50, GUIY-15, 900, 192);
	draw_sprite(sp_skillBoxOut, 0, GUIX+203, GUIY+245);
	
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
	draw_sprite_ext(skUi[global.sk1], 0, GUIX-12, GUIY+173, 1, 1, 0, en, 1);
	
	en = c_white;
	if (global.skMp[global.sk2] > global.mp) en = c_gray;
	draw_sprite_ext(skUi[global.sk2], 0, GUIX+125, GUIY+173, 1, 1, 0, en, 1);
	
	en = c_white;
	if (global.skMp[global.sk3] > global.mp) en = c_gray;
	draw_sprite_ext(skUi[global.sk3], 0, GUIX+265, GUIY+173, 1, 1, 0, en, 1);
	
	
	draw_sprite_ext(sp_skillUi_black, 0, GUIX-12, GUIY+191, 1, global.skKul[0]/global.skKulData[global.sk1], 0, c_white, 0.5);
	draw_sprite_ext(sp_skillUi_black, 0, GUIX+125, GUIY+191, 1, global.skKul[1]/global.skKulData[global.sk2], 0, c_white, 0.5);
	draw_sprite_ext(sp_skillUi_black, 0, GUIX+265, GUIY+191, 1, global.skKul[2]/global.skKulData[global.sk3], 0, c_white, 0.5);
	
	
	
	
	var skMpVar = 0;
	
	skMpVar = (global.skMp[global.sk1]/100);
	draw_sprite(sp_skillBox, skMpVar, GUIX+60, GUIY+245);
	
	skMpVar = (global.skMp[global.sk2]/100);
	draw_sprite(sp_skillBox, skMpVar, GUIX+200, GUIY+245);
	
	skMpVar = (global.skMp[global.sk3]/100);
	draw_sprite(sp_skillBox, skMpVar, GUIX+340, GUIY+245);
	
	
	}
	/*
	//아이템 UI 표시
	{
		for (i = 0; i < global.itemNum; i++) {
			
			var gd = 0;
			if (global.itemGet[i] != -1) 
			{
				gd = global.itemGrade[i] + 1;
				draw_sprite_ext(sp_itemOut, gd, 80 + 140*i, 1000, 1, 1, 0, c_white, 0.5);
				draw_sprite_ext(itemSp[global.itemGet[i]], gd-1, 80 + 140*i, 1000, 1, 1, 0, c_white, 0.5);
			}
			else draw_sprite_ext(sp_itemOut, gd, 80 + 140*i, 1000, 1, 1, 0, c_white, 0.5);
			
			draw_sprite_ext(sp_itemRing, 0, 80 + 140*i, 1000, 1, 1, 0, c_white, 0.5);
		}
	}
	
	*/
}