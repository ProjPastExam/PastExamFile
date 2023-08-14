/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	sc_mobCmMode();

	
	if ( state != -1 ) {
		
		sc_mobMain();
		
		//이하 몹 개인 코드
		sc_guBossAtk();
	}
	else {
		sprite_index = sp_gu_die;
		if ( process < 230 ) process++;
		if ( process == 1 ) { 
			SE_Play(s_guBoss_die, global.vol);
			alarm[4] = 280;
			BGM_Stop(90);
			image_index = 0;

			with (ob_guSpawn1)	{ hp = 0; }
			with (ob_guSpawn2)	{ hp = 0; }
			with (ob_guSpawn3)	{ hp = 0; }
			
			sc_steam_achievement("AC_BOSS5");
		}
		if ( process < 8 ) { xSpeed = -1 * dir * 18; }
		else if ( process < 16 ) { xSpeed = -1 * dir * 12; }
		else if ( process < 24 ) { xSpeed = -1 * dir * 6; }
		else { xSpeed = 0; }
	}
	sc_mobfixlotation();
	sc_obPhysics();
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;