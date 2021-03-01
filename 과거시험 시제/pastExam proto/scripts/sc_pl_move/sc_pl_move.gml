function sc_pl_move() {

	var jumpSpeed	= -17.5;
	var last		= 30;
	var	accSpeed	= 0.8;
	var	walkSpeed	= 8.5;
	
	//점프
	if ( jumpLast > 0 ) jumpLast--;

	if ( keyJump ) { 
		if ( keyDown ) { 
			var tileId	= layer_tilemap_get_id("Tile_Collision");
			var bottom	= tilemap_get_at_pixel(tileId, x, bbox_bottom);
			if (bottom == 2) { y += 16; audio_play_sound(s_jump, 5, false); }
			}
		else if ( !isJump && ( canMove == 0 ) ) { 
			jumpLast = last; ySpeed = jumpSpeed; audio_play_sound(s_jump, 5, false); }
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
		if ( keyRight )	{
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
		atkProcess = 0;
		canMove = 1;
	}
	if ( keyDash && dProcess == -1 && canMove == 0) {
		dProcess = 0;
		canMove = 10;
	}
	if ( keySk1 && atkProcess == -1 && canMove == 0 && global.mp > 200 ) {
		atkProcess = 0;
		canMove = 100;
		global.mp -= 200;
	}

	if ( atkProcess > -1 && canMove == 1 ) sc_pl_atk();
	if ( atkProcess > -1 && canMove == 2 ) sc_pl_atk2();
	if ( atkProcess > -1 && canMove == 3 ) sc_pl_atkFront();
	if ( atkProcess > -1 && canMove == 4 ) sc_pl_atkBack();
	if ( atkProcess > -1 && canMove == 5 ) sc_pl_atkDown();
	if ( atkProcess > -1 && canMove == 6 ) sc_pl_atkUp();
	if ( atkProcess > -1 && canMove == 7 ) sc_pl_atkFront2();
	
	if ( dProcess > -1 && canMove == 10 ) sc_pl_dash();
	
	
	if ( atkProcess > -1 && canMove == 100 ) sc_pl_sk_baby();
	
	
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
	
	
}
