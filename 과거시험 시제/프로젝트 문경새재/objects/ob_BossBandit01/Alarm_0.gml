/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("slow") == 0 )	{
	alarm[0] = 1;
	image_speed = 1;
}
else {
	alarm[0] = 2;
	image_speed = 0.5;
}

if ( sc_getRoomValue("pause") == 0 ) {
	if ( state != -1 ) {
		if ( !isJump )	xSpeed = 0;
		if ( hitAfter > 0 ) hitAfter--;
		if ( knockback ) sc_mobKnockback();
		if ( hp <= 0 ) { state = -1; process = 0; }
		//이하 몹 개인 코드
		sc_banditBoss01Fight();
		//sc_banditBoss01Atk03();
	}
	else {
		sprite_index = sp_banditBoss01_die;
		image_xscale = dir;
		xSpeed = 0;
		process++;
		if (process < 8) image_index = 0;
		else if (process < 16) image_index = 1;
		else if (process < 24) image_index = 2;
		else if (process < 80) image_index = 3;
		else { 
			if (instance_exists(ob_player)) ob_player.canMove = -1;
			if (instance_exists(ob_roomControl)) ob_roomControl.alarm[7] = 1;
		}
	}
	sc_obPhysics();
}
else {
	image_speed = 0;
}