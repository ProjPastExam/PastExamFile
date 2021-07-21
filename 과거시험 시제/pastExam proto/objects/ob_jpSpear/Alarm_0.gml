 /// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("slow") == 0 )	{
	image_speed = 1;
}
else {
	image_speed = room_speed/60;
}

if ( sc_getRoomValue("pause") == 0 ) {
	if ( state != -1 ) {
		sc_mobMain();
		
		//이하 몹 개인 코드
		sc_jpSpearSprite();
		if (ad) sc_jpSpearAtk();
	}
	else {
		sprite_index = sp_jpSpear_die;
		if ( process < 24 ) process++;
		if ( process == 1 ) { 
			//var han = irandom_range(0, 3);
			//if (han == 0) audio_play_sound(s_bandit01die1, 8, false);
			//else if (han == 1) audio_play_sound(s_bandit01die2, 8, false);
			//else if (han == 2) audio_play_sound(s_bandit01die3, 8, false);
			//else audio_play_sound(s_bandit01die4, 8, false)
		}
		if ( process < 8 ) { image_index = 0; xSpeed = -1 * dir * 15; }
		else if ( process < 16 ) { image_index = 1; xSpeed = -1 * dir * 10; }
		else if ( process < 24 ) { image_index = 2; xSpeed = -1 * dir * 5; }
		else if (!isJump) { image_index = 3; xSpeed = 0;  }
	}
	sc_obPhysics();
}
else {
	image_speed = 0;
}
alarm[0] = 1;