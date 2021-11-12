// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_gameGUI(){
	var GUIX = 70;
	var GUIY = 30;
	draw_set_alpha(1);
	var i = 1;
	draw_sprite_stretched(sp_mpbar, 0, GUIX-10, GUIY+100, 720, 96);
	draw_sprite_stretched(sp_healthbar, global.hp, -50, GUIY-15, 900, 192);
	draw_sprite(sp_skillBoxOut, 0, GUIX+213, GUIY+245);
	
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
	if (ob_player.skMp[global.sk1] > global.mp) en = c_gray;
	draw_sprite_ext(skUi[global.sk1], 0, GUIX-2, GUIY+173, 1, 1, 0, en, 1);
	
	en = c_white;
	if (ob_player.skMp[global.sk2] > global.mp) en = c_gray;
	draw_sprite_ext(skUi[global.sk2], 0, GUIX+135, GUIY+173, 1, 1, 0, en, 1);
	
	en = c_white;
	if (ob_player.skMp[global.sk3] > global.mp) en = c_gray;
	draw_sprite_ext(skUi[global.sk3], 0, GUIX+275, GUIY+173, 1, 1, 0, en, 1);
	
	draw_sprite(sp_skillBox, 0, GUIX+70, GUIY+245);
	draw_sprite(sp_skillBox, 1, GUIX+210, GUIY+245);
	draw_sprite(sp_skillBox, 2, GUIX+350, GUIY+245);
	
	
	}
	
	
}