//무기 0000번 공격 스크립트
//무기 : 도 종류

/////////////////////////////////////////////////////////
xSpeed = 0;
sprite_index = sp_playerAtk00;
atkProcess += 1;
image_xscale = dir;
var deep = depth - 10;

//1단계 공격
if ( atkProcess < 6 )		{	image_index = 0; }
else if ( atkProcess < 9 )	{	image_index = 1;	xSpeed = dir*7;	ySpeed = ySpeed / 2; }
else if ( atkProcess < 11 ) {	image_index = 2;	xSpeed = dir*6;	ySpeed = ySpeed / 1.7; }
else if ( atkProcess < 14 ) {	image_index = 3;	xSpeed = dir*5;	ySpeed = ySpeed / 1.4;
		instance_create_depth( x, y, deep, ob_atkEffect );
		ob_atkEffect.sprite_index = sp_atkEffect00;
		ob_atkEffect.image_index = 0;
}
else if ( atkProcess < 16 )	{	image_index = 4;	xSpeed = dir*4;	ySpeed = ySpeed / 1.2; }
else if ( atkProcess < 19 )		image_index = 5;
else if ( atkProcess < 30 ) {
	if ( keyAttack ) atkProcess = 40;
	if ( keyLeft ) dir = -1;
	if ( keyRight ) dir = 1;
}

if ( atkProcess > 30 && atkProcess < 40 ) {
	atkProcess = 0;
	canMove = 0;
	canAtk = 30;
}

//2단계 공격
if ( atkProcess < 40 ) {}
else if ( atkProcess < 44 ) {	image_index = 6; }
else if ( atkProcess < 47 )	{	image_index = 7;	xSpeed = dir*6;	ySpeed = ySpeed / 2; 
		instance_create_depth( x, y, deep, ob_atkEffect );
		ob_atkEffect.sprite_index = sp_atkEffect00;
		ob_atkEffect.image_index = 0;
}
else if ( atkProcess < 50 ) {	image_index = 8;	xSpeed = dir*5;	ySpeed = ySpeed / 1.6; }
else if ( atkProcess < 54 ) {	image_index = 9;	xSpeed = dir*4;	ySpeed = ySpeed / 1.2; }
else if ( atkProcess < 57 ) {	image_index = 10; }
else if ( atkProcess < 70 ) {
	if ( keyAttack ) atkProcess = 75;
	if ( keyLeft ) dir = -1;
	if ( keyRight ) dir = 1;
}

if ( atkProcess > 70 && atkProcess < 75 ) {
	atkProcess = 0;
	canMove = 0;
	canAtk = 30;
}

//3단계 공격
if ( atkProcess < 75 ) {}
else if ( atkProcess < 81 ) {	image_index = 11; }
else if ( atkProcess < 86 ) {	image_index = 12;	xSpeed = dir*7;	ySpeed = ySpeed / 2; }
else if ( atkProcess < 89 ) {	image_index = 13;	xSpeed = dir*6;	ySpeed = ySpeed / 1.6; 
		instance_create_depth( x, y, deep, ob_atkEffect );
		ob_atkEffect.sprite_index = sp_atkEffect00;
		ob_atkEffect.image_index = 0;
}
else if ( atkProcess < 92 ) {	image_index = 14;	xSpeed = dir*5;	ySpeed = ySpeed / 1.2; }
else if ( atkProcess < 95 ) {	image_index = 15; }
else if ( atkProcess < 105 ) {
	if ( keyAttack ) atkProcess = 110;
	if ( keyLeft ) dir = -1;
	if ( keyRight ) dir = 1;
}

if ( atkProcess > 105 && atkProcess < 110 ) {
	atkProcess = 0;
	canMove = 0;
	canAtk = 30;
}

//4단계 공격
if ( atkProcess < 110 ) {}
else if ( atkProcess < 114 ) {	image_index = 15;	xSpeed = dir*6;	ySpeed = ySpeed / 2; }
else if ( atkProcess < 120 ) {	image_index = 16;	xSpeed = dir*5;	ySpeed = ySpeed / 1.7;
		instance_create_depth( x, y, deep, ob_atkEffect );
		ob_atkEffect.sprite_index = sp_atkEffect00;
		ob_atkEffect.image_index = 0;
}
else if ( atkProcess < 124 ) {	image_index = 17;	xSpeed = dir*4;	ySpeed = ySpeed / 1.4; }
else if ( atkProcess < 127 ) {	image_index = 18;	xSpeed = dir*3;	ySpeed = ySpeed / 1.2; }
else if ( atkProcess < 131 ) image_index = 19;
if ( atkProcess > 138 ) {
	atkProcess = 0;
	canMove = 0;
	canAtk = 30;
}