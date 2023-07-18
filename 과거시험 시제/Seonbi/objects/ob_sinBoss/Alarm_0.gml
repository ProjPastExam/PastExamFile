/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	sc_mobCmMode();

	
	if ( state != -1 ) {
		
		sc_mobMain();
		
		//이하 몹 개인 코드
		sc_sinBossAtk();
	}
	else {
		sprite_index = sp_sinB_die;
		if ( process < 230 ) process++;
		if ( process == 1 ) { 
			sc_dieJp2();
			alarm[4] = 230;
			BGM_Stop(90);
			image_index = 0;
			if (global.clearStage == 11) {
				global.clearStage = 15;
				VSLS_SetAndSave("clearStage", 15, "saveFile");
			}
		}
		if ( process < 8 ) { xSpeed = -1 * dir * 18; }
		else if ( process < 16 ) { xSpeed = -1 * dir * 12; }
		else if ( process < 24 ) { xSpeed = -1 * dir * 6; }
		else { xSpeed = 0; }
		
		if (process > 160)	sprite_index = sp_sinBW_stand;
	}
	sc_mobfixlotation();
	sc_obPhysics();
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;