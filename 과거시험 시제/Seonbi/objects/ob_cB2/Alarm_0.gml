/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	if (instance_exists(ob_roomControl) && ob_roomControl.cmMode == 3) {
		sc_mobCmMode();
	}
	
	if ( state != -1 ) {
		
		sc_mobMain();
		
		//이하 몹 개인 코드
		//sc_jpBossatk();
		sc_cBoss2Atk();
	}
	else {
		sprite_index = sp_cB2_die;
		if ( process < 280 ) process++;
		if ( process == 1 ) { 
			SE_Play(s_cB2_die, global.vol);
			alarm[4] = 330;
			BGM_Stop(0);
		}
		xSpeed = 0
		if ( process < 8 ) { image_index = 0; }
		else if ( process < 16 ) { image_index = 1; }
		else if ( process < 24 ) { image_index = 2; }
		else if ( process < 32 ) { image_index = 3; }
		else if ( process < 40 ) { image_index = 4; }
		else if ( process < 48 ) { image_index = 5; }
		else if ( process < 56 ) { image_index = 6; }
		else if ( process < 64 ) { image_index = 7; }
		else if ( process < 72 ) { image_index = 8; }
		else if ( process < 80 ) { image_index = 9; }
		else if ( process < 88 ) { image_index = 10; }
		else if ( process < 96 ) { image_index = 11; }
		else if ( process < 104 ) { image_index = 12; }
		else if ( process < 112 ) { image_index = 13; }
		else if ( process < 120 ) { image_index = 14; }
		else if ( process < 128 ) { image_index = 15; }
		else if ( process < 136 ) { image_index = 16; }
		else if ( process < 144 ) { image_index = 17; }
		else if ( process < 152 ) { image_index = 18; }
		else if ( process < 160 ) { image_index = 19; }
		else if ( process < 168 ) { image_index = 20; }
		else if ( process < 176 ) { image_index = 21; }
		else if ( process < 184 ) { image_index = 22; }
		else if ( process < 192 ) { image_index = 23; }
		else if ( process < 200 ) { image_index = 24; }
		else if ( process < 208 ) { image_index = 25; }
		else if ( process < 216 ) { image_index = 26; }
		else if ( process < 224 ) { image_index = 27; }
		else if (!isJump) { image_index = 28; xSpeed = 0;   }
	}
	sc_mobfixlotation();
	sc_obPhysics();
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;