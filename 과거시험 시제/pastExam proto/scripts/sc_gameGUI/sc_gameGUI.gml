// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_gameGUI(){
	
	draw_set_alpha(1);
	var i = 1;
	draw_sprite_stretched(sp_healthbar, 0, -50, 40, 600, 128);
	for ( i = 1; i < 10; i++ ) {
		if ( global.hpMax >= i ) {
			if ( global.hp >= i )
				draw_sprite_stretched(sp_heart, 1, GUIX+20+(40*i), GUIY+5,80, 80);
			else
				draw_sprite_stretched(sp_heart, 0, GUIX+20+(40*i), GUIY+5,80, 80);
		}
	}
	
	for ( i = 1; i < 10; i++ ) {
		if ( global.mpMax >= i ) {
			if ( global.mp >= i )
				draw_sprite_stretched(sp_mana, 1, GUIX+(40*i), GUIY+80,32, 32);
			else
				draw_sprite_stretched(sp_mana, 0, GUIX+(40*i), GUIY+80,32, 32);
		}
	}
	
}