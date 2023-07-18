/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	
	if ( state != -1 ) {
		sc_mobMain();
		
		//이하 몹 개인 코드
		sc_mask5Atk();
	}
	else {
		sprite_index = sp_mask5_die;
		process++;
		if ( process == 1 ) { 
			SE_Play(s_mask5Die, global.vol);
		}
		if ( process < 5 ) { image_index = 0; xSpeed = -1 * dir * 9; }
		else if ( process < 10 ) { image_index = 1; xSpeed = -1 * dir * 6; }
		else if ( process < 15 ) { image_index = 2; xSpeed = -1 * dir * 3; }
		else if ( process < 20 ) { image_index = 3; }
		else if ( process < 25 ) { image_index = 4; }
		else if ( process < 30 ) { image_index = 5; }
		else if ( process < 35 ) { image_index = 6; }
		else if ( process < 40 ) { image_index = 7; }
		else if ( process < 45 ) { image_index = 8; }
		else if ( process < 50 ) { image_index = 9; }
		else					 { instance_destroy(); }
	}
	sc_mobfixlotation();
	sc_obPhysics();
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;