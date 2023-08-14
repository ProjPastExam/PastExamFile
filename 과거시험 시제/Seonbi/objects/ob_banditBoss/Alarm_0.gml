/// @description Insert description here
// You can write your code in this editor


if ( sc_getRoomValue("pause") == 0 ) {
	sc_mobCmMode();
	
	if ( state != -1 ) {
		sc_mobMain();
		
		//이하 몹 개인 코드
		//sc_banditBossSprite();
		if (ad) sc_banditBossAtk();
	}
	else {
		sprite_index = sp_banditBoss_die;
		if ( process < 40 ) process++;
		if ( process == 1 ) { 
			BGM_Stop(90);
			sc_dieJp2();
			alarm[4] = 120;
			//if (global.clearStage == 2) {
				//global.clearStage = 5;
				//VSLS_SetAndSave("clearStage", 5, "saveFile");
			//}
			
			sc_steam_achievement("AC_BOSS1");
		}
		if ( process < 8 ) { image_index = 0; xSpeed = -1 * dir * 15; }
		else if ( process < 16 ) { image_index = 1; xSpeed = -1 * dir * 13; }
		else if ( process < 24 ) { image_index = 2; xSpeed = -1 * dir * 11; }
		else if ( process < 32 ) { image_index = 3; xSpeed = -1 * dir * 9; }
		else if ( process < 40 ) { image_index = 4; xSpeed = -1 * dir * 7; }
		else if (!isJump) { image_index = 5; xSpeed = 0;   }
	}
	sc_mobfixlotation();
	sc_obPhysics();
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;