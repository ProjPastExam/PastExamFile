function sc_pl_move() {

	var jumpSpeed	= -17.5;
	var last		= 30;
	var	accSpeed	= 0.8;
	var	walkSpeed	= 8.5;
	
	//무적프래임 설정
	isImort = false;
	if ((dProcess >= 0 && dProcess <= 10)) isImort = true;
	
	//아이템 버프 시간 설정
	if (dmgBuffT > -1) dmgBuffT--;
	
	//점프
	if ( jumpLast > 0 ) jumpLast--;

	if ( keyJump ) { 
		if ( keyDown ) { 
			var tileId	= layer_tilemap_get_id("Tile_Collision");
			var bottom	= tilemap_get_at_pixel(tileId, x, bbox_bottom);
			if (bottom == 2) { y += 16; audio_play_sound(s_jump, 5, false); }
			}
		else if ( !isJump && ( canMove == 0 ) ) { 
			jumpLast = last; ySpeed = jumpSpeed; audio_play_sound(s_jump, 5, false);
			if (keyRight) xSpeed = walkSpeed;
			if (keyLeft) xSpeed = -walkSpeed;
		}
	}
	if ( (canMove != 5 && !keyJump2) || ySpeed >= 0 ) {
		jumpLast = 0;
	}
	if ( jumpLast == 0 && ySpeed < 0 ) {
		ySpeed += 1;
	}

	if ( isJump && ( canMove == 0 ) ) { sc_pl_sprite(2); }

	
	if ( canMove == 0 ) {
		//좌우 이동
		if ( keyLeft )	{ 
			if ( xSpeed > -walkSpeed )	xSpeed -= accSpeed;
			else xSpeed = -walkSpeed;
			dir = -1;
			if ( !isJump && canMove == 0 ) sc_pl_sprite(1);
		}
		else if ( keyRight )	{
			if (( xSpeed < walkSpeed ))	xSpeed += accSpeed; 
			else xSpeed = walkSpeed;
			dir = 1;
			if ( !isJump && canMove == 0 ) sc_pl_sprite(1);
		}

	}

	//입력 없을시 정지
	if ( !keyLeft && !keyRight && ( canMove == 0 ) ) {
		if ( !isJump && canMove == 0 ) { sc_pl_sprite(0);	spIndex = false; }
		if ( xSpeed > accSpeed )		xSpeed -= accSpeed;
		else if ( xSpeed < -accSpeed )	xSpeed += accSpeed;
		else							xSpeed = 0;
	}
	
	
	if ( atkProcess < -1 ) atkProcess++;
	if ( dProcess < -1 ) dProcess++;
	
	if ( keyAttack && atkProcess == -1 && canMove == 0 ) {
		if (keyTop && isJump) canMove = 8; 
		else canMove = 1;
		atkProcess = 0;
	}
	if ( keyDash && dProcess == -1 && canMove == 0) {
		dProcess = 0;
		canMove = 10;
	}
	if ( keySk1 && atkProcess == -1 && canMove == 0 ) {
		if ( global.mp >= skMp[global.sk1] ) { atkProcess = 0; canMove = global.sk1; }
	}
	if ( keySk2 && atkProcess == -1 && canMove == 0 ) {
		if ( global.mp >= skMp[global.sk2] ) { atkProcess = 0; canMove = global.sk2; }
	}
	if ( global.mp < 0 ) global.mp = 0;
	
	if ( atkProcess > -1 && canMove == 0 ) atkProcess = -1;
	if ( atkProcess > -1 && canMove == 1 ) sc_pl_atk();
	if ( atkProcess > -1 && canMove == 2 ) sc_pl_atk2();
	if ( atkProcess > -1 && canMove == 3 ) {
		if ( isFront >= 0 ) sc_pl_atkFrontKick();
		else sc_pl_atkFront();
	}
	if ( atkProcess > -1 && canMove == 4 ) sc_pl_atkBack();
	if ( atkProcess > -1 && canMove == 5 ) sc_pl_atkDown();
	if ( atkProcess > -1 && canMove == 6 ) {
		if ( itemRise >= 0 ) sc_pl_atkUpRise(); 
		else sc_pl_atkUp();
	}
	if ( atkProcess > -1 && canMove == 7 ) sc_pl_atkFront2();
	if ( atkProcess > -1 && canMove == 8 ) sc_pl_atkJumpUp();
	if ( atkProcess > -1 && canMove == 9 ) sc_pl_atkJumpFront();
	
	if ( dProcess > -1 && canMove == 10 ) sc_pl_dash();
	
	if ( atkProcess > -1 && canMove == 11 ) sc_pl_atkJump2();
	
	//스킬
	
	if ( atkProcess > -1 ) {
		switch (canMove) {
		case 100:	sc_pl_sk100(); break;
		case 101:	sc_pl_sk101(); break;
		}
	}
	
	
	if ( hitAfter > 0 ) {
		if ( hitEffect > 0 ) hitEffect--;
		else {
			if ( image_alpha == 1 ) image_alpha = 0.4;
			else					image_alpha = 1;
			hitEffect = 8;
		}
		hitAfter -= 1;
	}
	else {
		image_alpha = 1;
		hitEffect = 0;
	}
	
	if ( canMove == -1 ) { xSpeed = 0; ySpeed = 0; }
	
	
}
