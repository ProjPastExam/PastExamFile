/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	comEffect++;
	if (comEffect > 16) comEffect = 0;
	if (itemCheck) { sc_pl_itemCheck(); itemCheck = false; }
	if (mobAcc != 0) {	//몹 충돌
		xSpeed = mobAcc;
		mobAcc = 0;
	}
	sc_pl_comCritic();
	sc_obPhysics();
	if (xSpeed > 8)		xSpeed = 8;
	else if (xSpeed < -8)	xSpeed = -8;
	sc_pl_keyCheck();
	sc_pl_move();
	sc_pl_camera();
	
	if (global.hp <= 0 && canMove != -2) {
		with (ob_roomControl)	{ cmMode = 0; }
		canMove = -2;
		process = 0;
		//if (instance_exists(ob_roomControl)) ob_roomControl.slow = 15;
		alarm[2] = 90;
		uc_set_view_scale(0.6, 0.08);
		hitAfter = 0;
		if (isJump) ySpeed = -8;
	}
	if (canMove == -2) {
		depth = 200;
		sprite_index = sp_pl_die;
		process++;
		xSpeed = 0;
		if ( process < 10 ) { image_index = 0; xSpeed = dir * -12; }
		else if ( process < 20 ) { image_index = 1; xSpeed = dir * -10; }
		else if ( process < 30 ) { image_index = 2; xSpeed = dir * -8; }
		else if ( process < 40 ) { image_index = 3; xSpeed = dir * -6; 
			if (isJump) process--;
		}
		else if ( process < 50 ) { image_index = 4; xSpeed = dir * -4; }
		else if ( process < 60 ) { image_index = 5; xSpeed = dir * -2; }
		else if ( !isJump ) image_index = 6;
	}
	if (canMove == -10) { sprite_index = sp_pl_standPeace; xSpeed = 0; }
	image_speed = 1;
}
else {
	image_speed = 0;
}

alarm[0] = 1;