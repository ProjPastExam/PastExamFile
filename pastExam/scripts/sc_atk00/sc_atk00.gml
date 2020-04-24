//무기 0000번 공격 스크립트
//무기 : 도 종류

/////////////////////////////////////////////////////////
xSpeed = 0;
ySpeed = 0;
if ( !isJump )	sprite_index = sp_playerAtk00;
else			sprite_index = sp_playerAtk00j;
atkProcess += 1;

//1단계 공격
if ( atkProcess == 9 ) image_index = 1;

if ( atkProcess == 12 ) image_index = 2;

if ( atkProcess == 15 ) { image_index = 3;
		instance_create_depth( x, y, 0, ob_atkEffect );
		ob_atkEffect.sprite_index = sp_atkEffect00;
		ob_atkEffect.image_index = 0;
}

if ( atkProcess == 18 ) image_index = 4;

if ( atkProcess == 21 ) image_index = 5;

if ( atkProcess > 21 && atkProcess < 35 && keyAttack ) atkProcess = 40;

if ( atkProcess > 35 && atkProcess < 40 ) {
	atkProcess = 0;
	canMove = 0;
	canAtk = 30;
}

//2단계 공격
if ( atkProcess == 43 ) image_index = 6;

if ( atkProcess == 46 ) image_index = 7;

if ( atkProcess == 49 ) { image_index = 8;
		instance_create_depth( x, y, 0, ob_atkEffect );
		ob_atkEffect.sprite_index = sp_atkEffect00;
		ob_atkEffect.image_index = 1;
}

if ( atkProcess == 52 ) image_index = 9;

if ( atkProcess == 55 ) image_index = 10;

if ( atkProcess > 55 && atkProcess < 70 && keyAttack ) atkProcess = 80;

if ( atkProcess > 70 && atkProcess < 75 ) {
	atkProcess = 0;
	canMove = 0;
	canAtk = 30;
}

//3단계 공격
if ( atkProcess == 83 ) image_index = 1;

if ( atkProcess == 86 ) image_index = 2;

if ( atkProcess == 89 ) { image_index = 3;
		instance_create_depth( x, y, 0, ob_atkEffect );
		ob_atkEffect.sprite_index = sp_atkEffect00;
		ob_atkEffect.image_index = 0;
}

if ( atkProcess == 92 ) image_index = 4;

if ( atkProcess == 95 ) image_index = 5;

if ( atkProcess > 95 && atkProcess < 120 && keyAttack ) atkProcess = 130;

if ( atkProcess > 120 && atkProcess < 130 ) {
	atkProcess = 0;
	canMove = 0;
	canAtk = 30;
}

//4단계 공격
if ( atkProcess == 133 ) image_index = 6;

if ( atkProcess == 136 ) image_index = 7;

if ( atkProcess == 139 ) { image_index = 8;
		instance_create_depth( x, y, 0, ob_atkEffect );
		ob_atkEffect.sprite_index = sp_atkEffect00;
		ob_atkEffect.image_index = 1;
}

if ( atkProcess == 142 ) image_index = 9;

if ( atkProcess == 145 ) image_index = 10;

if ( atkProcess > 170 ) {
	atkProcess = 0;
	canMove = 0;
	canAtk = 30;
}