/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("slow") == 0 )	{
	alarm[0] = 1;
	image_speed = 1;
}
else {
	alarm[0] = 2;
	image_speed = 0.5;
}

if ( sc_getRoomValue("pause") == 0 ) {
	if ( state != -1 ) {
		if ( !isJump )	xSpeed = 0;
		if ( hitAfter > 0 ) hitAfter--;
		
		//넉백과 기절
		if ( knockback ) sc_mobKnockback();
		
		if ( patrol ) sc_mobPatrol();
		if ( hp <= 0 ) { state = -1; process = 0; }
		if (state != 5 && state != 6) sc_mobAd();
		sc_bandit02Sprite();
		if (ad) sc_bandit02Atk();
	}
	else {
		sprite_index = sp_bandit02_die;
		if ( process == 1 ) { 
			var han = irandom_range(0, 3);
			if (han == 0) audio_play_sound(s_bandit01die1, 8, false);
			else if (han == 1) audio_play_sound(s_bandit01die2, 8, false);
			else if (han == 2) audio_play_sound(s_bandit01die3, 8, false);
			else audio_play_sound(s_bandit01die4, 8, false)
		}
		if ( process < 24 ) process++;
		if ( process < 8 ) { image_index = 0; xSpeed = -1 * dir * 15; }
		else if ( process < 16 ) { image_index = 1; xSpeed = -1 * dir * 10; }
		else if ( process < 24 ) { image_index = 2; xSpeed = -1 * dir * 5; }
		else { image_index = 3; if (!isJump) xSpeed = 0; }
	}
	sc_obPhysics();
}
else {
	image_speed = 0;
}