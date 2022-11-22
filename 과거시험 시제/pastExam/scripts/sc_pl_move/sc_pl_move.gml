function sc_pl_move() {

	var jumpSpeed	= -17.5;
	var last		= 30;
	var	accSpeed	= 0.8;
	var	walkSpeed	= 8.5;
	
	if (canMove == -100 && isJump) ySpeed = 5; 
	if (global.skKul[0] > 0) global.skKul[0]--;
	if (global.skKul[1] > 0) global.skKul[1]--;
	if (global.skKul[2] > 0) global.skKul[2]--;
	
	//무적프래임 설정
	isImort = false;
	if ((dProcess >= 0 && dProcess <= 10)) isImort = true;
	
	//아이템 버프 시간 설정
	if (dmgBuffT > -1) dmgBuffT--;
	
	if (keyAttack2) {
		if (isAtk3 < 20) isAtk3++;
	}
	else {
		isAtk3 = 0;
	}
	
	//점프
	if (!isJump && ySpeed >= 0)	{ canJump = true; }
	if ( jumpLast > 0 ) jumpLast--;

	if ( keyJump ) { 
		if ( keyDown ) { 
			var tileId	= layer_tilemap_get_id("Tile_Collision");
			var bottom	= tilemap_get_at_pixel(tileId, x, bbox_bottom);
			if (bottom == 2) { y += 16; SE_Play(s_jump, global.vol);}
			}
		else if ( canJump && ( canMove == 0 ) ) { 
			jumpLast = last; ySpeed = jumpSpeed; SE_Play(s_jump, global.vol);
			if (keyRight) xSpeed = walkSpeed;
			if (keyLeft) xSpeed = -walkSpeed;
			canJump = false;
		}
	}
	if ( (canMove != 5 && !keyJump2) || ySpeed >= 0 ) {
		jumpLast = 0;
	}
	if ( jumpLast == 0 && ySpeed < 0 ) {
		ySpeed += 1;
	}

	if ( !isJump ) isDash = true;
	else if (canMove == 0) { sc_pl_sprite(2); }

	
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
		//if (xSpeed > 1 && xSpeed < -1)	xSpeed = xSpeed / 1.1;
		else							xSpeed = 0;
	}
	
	if ( atkProcess < -1 ) atkProcess++;
	if ( dProcess < -1 ) dProcess++;
	
	if ( keyAttack && atkProcess == -1 && canMove == 0 ) {
		if (keyTop && isJump) { canMove = 8; }
		else if (keyDown && isJump) canMove = 13;
		//else if (keyRight) { canMove = 3; dir = 1; }
		//else if (keyLeft) { canMove = 3; dir = -1; }
		else canMove = 1;
		atkProcess = 0;
	}
	if ( keyDash && dProcess == -1 && canMove == 0 && isDash) {
		dProcess = 0;
		canMove = 10;
	}
	if ( keySk1 && atkProcess == -1 && canMove == 0 && global.mp >= global.skMp[global.sk1] && global.skKul[0] == 0 ) {
		{ atkProcess = 0; canMove = global.sk1; skState = 0; }
	}
	if ( keySk2 && atkProcess == -1 && canMove == 0 && global.mp >= global.skMp[global.sk2] && global.skKul[1] == 0 ) {
		{ atkProcess = 0; canMove = global.sk2; skState = 1; }
	}
	if ( keySk3 && atkProcess == -1 && canMove == 0 && global.mp >= global.skMp[global.sk3] && global.skKul[2] == 0 ) {
		 { atkProcess = 0; canMove = global.sk3; skState = 2; }
	}
	// && atkProcess == -1 && canMove == 0
	if ( global.mp < 0 ) global.mp = 0;
	
	if ( isAtk3 == 20 && canMove == 0 && item9) {
		canMove = 12;
		isAtk3 = 0;
		atkProcess = 0;
	}
	
	
	if ( atkProcess > -1 ) {
		switch(canMove) {
		case 0:		atkProcess = -1;		break;
		case 1:		sc_pl_atk();			break;
		case 2:		sc_pl_atk2();			break;
		case 3:
			if (isFront > 0)	sc_pl_atkFrontKick();
			else				sc_pl_atkFront();
			break;
		case 4:		sc_pl_atkBack();		break;
		case 5:		sc_pl_atkDn1();			break;
		case 6:		sc_pl_atkUp();			break;
		case 7:		sc_pl_atkFront2();		break;
		case 8:		sc_pl_atkJumpUp();		break;
		case 9:		sc_pl_atkJumpFront();	break;
		case 11:	sc_pl_atkJump2();		break;
		case 12:	sc_pl_atk3();			break;
		case 13:	sc_pl_atkDn2();			break;
		
		case 20:	sc_pl_item4();			break;
		case 21:	sc_pl_item0();			break;
		
		//스킬
		case 101:	sc_pl_sk101();			break;
		case 102:	sc_pl_sk102();			break;
		case 103:	sc_pl_sk103();			break;
		case 104:	sc_pl_sk104();			break;
		case 105:	sc_pl_sk105();			break;
		case 106:	sc_pl_sk106();			break;
		case 107:	sc_pl_sk107();			break;
		case 108:	sc_pl_sk108();			break;
		case 109:	sc_pl_sk109();			break;
		}
	}
	if (dProcess > -1 && canMove == 10) sc_pl_dash();
	if (canMove != 10 && dProcess > -1 ) dProcess = -30;

	if (item2 > 0)	sc_pl_item2();
	if (global.item8 && global.comCt >= global.item8Index && !instance_exists(ob_pl_item8)) {
		instance_create_layer(x, y, "effect", ob_pl_item8);
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
