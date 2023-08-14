/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	if ( state != -1 ) {
		sc_mobMain();
		
		//이하 몹 개인 코드
		sc_jpMbSprite();
		if (ad) sc_jpMbAtk();
	}
	else {
		sprite_index = sp_jpMb_die;
		if ( process < 24 ) process++;
		if ( process == 1 ) { 
			var han = irandom_range(0, 2);
			if (han == 0) SE_Play(s_jpBdie1, global.vol);
			else if (han == 1) SE_Play(s_jpBdie2, global.vol);
			else SE_Play(s_jpBdie3, global.vol);
			alarm[4] = 120;
			
			if (global.clearStage < 0) {
				global.clearStage = 0;
				VSLS_SetAndSave("clearStage", 0, "saveFile");
			}
			sc_steam_achievement("AC_TUTO");
		}
		if ( process < 8 ) { image_index = 0; xSpeed = -1 * dir * 15; }
		else if ( process < 16 ) { image_index = 1; xSpeed = -1 * dir * 10; }
		else if ( process < 24 ) { image_index = 2; xSpeed = -1 * dir * 5; }
		else if (!isJump) { image_index = 3; xSpeed = 0;   }
	}
	sc_obPhysics();
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;