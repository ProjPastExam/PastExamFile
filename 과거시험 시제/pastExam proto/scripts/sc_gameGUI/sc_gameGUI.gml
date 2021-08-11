// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_gameGUI(){
	var GUIX = 70;
	var GUIY = 40;
	draw_set_alpha(1);
	var i = 1;
	draw_sprite_stretched(sp_healthbar, 0, -50, GUIY-15, 900, 192);
	draw_sprite_stretched(sp_mpbar, 0, GUIX-10, GUIY+105, 720, 96);
	
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
	
	//스킬 UI 표시
	{
	var en = 1;
	
	if (instance_exists(ob_player) && ob_player.skMp[global.sk1] < global.mp) en = 0;
	draw_sprite(skUi[global.sk1], en, 50, GUIY+180);
	
	if (instance_exists(ob_player) && ob_player.skMp[global.sk2] < global.mp) en = 0;
	draw_sprite(skUi[global.sk2], en, 200, GUIY+180);
	
	if (instance_exists(ob_player) && ob_player.skMp[global.sk3] < global.mp) en = 0;
	draw_sprite(skUi[global.sk3], en, 350, GUIY+180);
	
	draw_sprite(sp_skillUi_outline, 0, 50, GUIY+180);
	draw_sprite(sp_skillUi_outline, 1, 200, GUIY+180);
	draw_sprite(sp_skillUi_outline, 2, 350, GUIY+180);
	
	}
	
	for ( i = 9; i >= 0; i-- ) {
		if ( global.mpMax >= i * 100 ) {
			if ( global.mp >= i * 100 + 100) {
				if (i%2 == 1)
					draw_sprite_stretched(sp_mana, 10, GUIX+(66*i), GUIY+105,96, 96);
				else
					draw_sprite_stretched(sp_mana, 11, GUIX+(66*i), GUIY+105,96, 96);
			}
			else if ( global.mp >= i * 100)
				draw_sprite_stretched(sp_mana, (global.mp - i*100) / 10, GUIX+(66*i), GUIY+105,96, 96);
			else
				draw_sprite_stretched(sp_mana, 0, GUIX+(66*i), GUIY+105,96, 96);
		}
	}
	
	
}