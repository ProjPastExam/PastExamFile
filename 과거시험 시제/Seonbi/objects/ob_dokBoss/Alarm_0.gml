/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	sc_mobCmMode();

	
	if ( state != -1 ) {
		
		sc_mobMain();
		
		//이하 몹 개인 코드
		sc_dokBossAtk();
	}
	else {
		sprite_index = sp_dokBoss_die;
		if ( process < 280 ) process++;
		if ( process == 1 ) { 
			SE_Play(s_dokBDie3, global.vol);
			alarm[4] = 320;
			BGM_Stop(90);
			image_index = 0;
			
			sc_steam_achievement("AC_BOSS4");
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