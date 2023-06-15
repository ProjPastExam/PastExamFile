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
		if (ad) sc_chang02Atk();
	}
	else {
		sprite_index = sp_chang02_die;
		if ( process < 90 ) process++;
		if ( process == 1 ) { 
			SE_Play(s_chang_die2, global.vol);
		}
		if ( process < 8 ) { image_index = 0; xSpeed = -1 * dir * 15; }
		else if ( process < 16 ) { image_index = 1; xSpeed = -1 * dir * 10; }
		else if ( process < 24 ) { image_index = 2; xSpeed = -1 * dir * 5; }
		else if (!isJump) { image_index = 3; xSpeed = 0; }
		sc_guSmoke(80, 1);
	}
	sc_mobfixlotation();
	sc_obPhysics();
}
else {
	image_speed = 0;
}
alarm[0] = 1;