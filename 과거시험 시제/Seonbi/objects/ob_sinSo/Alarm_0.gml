/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	
	if ( state != -1 ) {
		sc_mobMain();
		
		//이하 몹 개인 코드
		sc_sinSoAtk();
		
	}
	else {
		process++;
		if ( process == 1 ) { 
			image_index = 0;
			SE_Play(s_sin2_atk4_2, global.vol);
		}
		sprite_index = sp_sinSo_die;
	}
	xSpeed = 0;
	ySpeed = 0;
	sc_mobfixlotation();
	sc_obPhysics();
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;