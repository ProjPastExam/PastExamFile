// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_gameGUI(){
	var GUIX = 70;
	var GUIY = 85;
	draw_set_alpha(1);
	var i = 1;
	draw_sprite_stretched(sp_mpbar, 0, 0, 140, 900, 192);
	draw_sprite_stretched(sp_healthbar, 0, -50, 70, 900, 192);
	
	for ( i = 1; i <= 10; i++ ) {
		if ( global.hpMax >= i ) {
			if ( global.hp >= i )
				draw_sprite_stretched(sp_heart, 0, GUIX+50+(50*i), GUIY-(i%2-1)*15,120, 120);
			else {
				if ( global.hp == i - 1 && hpProcess > 0)
					draw_sprite_stretched(sp_heart, 1+(24-hpProcess)/3, GUIX+50+(50*i), GUIY-(i%2-1)*15,120, 120);
				else
					draw_sprite_stretched(sp_heart, 9, GUIX+50+(50*i), GUIY-(i%2-1)*15,120, 120);
			}
		}
	}
	
	for ( i = 0; i < 10; i++ ) {
		if ( global.mpMax >= i * 100 ) {
			if ( global.mp >= i * 100 + 100) {
				if (i%2 == 1)
					draw_sprite_stretched(sp_mana, 10, GUIX+(60*i), GUIY+110,96, 96);
				else
					draw_sprite_stretched(sp_mana, 11, GUIX+(60*i), GUIY+110,96, 96);
			}
			else if ( global.mp >= i * 100)
				draw_sprite_stretched(sp_mana, (global.mp - i*100) / 10, GUIX+(60*i), GUIY+110,96, 96);
			else
				draw_sprite_stretched(sp_mana, 0, GUIX+(60*i), GUIY+110,96, 96);
		}
	}
	
}