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
else if ( atkProcess < 10 )	{	image_index = 1;	xSpeed = dir*6;	ySpeed = ySpeed / 2; }
else if ( atkProcess < 14 ) {	image_index = 2;	xSpeed = dir*5;	ySpeed = ySpeed / 1.7; }
else if ( atkProcess < 18 ) {	image_index = 3;	xSpeed = dir*4;	ySpeed = ySpeed / 1.4;
		instance_create_depth( x, y, deep, ob_atkEffect );
		ob_atkEffect.sprite_index = sp_atkEffect00;
		ob_atkEffect.image_index = 0;
}
else if ( atkProcess < 22 )	{	image_index = 4;	xSpeed = dir*3;	ySpeed = ySpeed / 1.2; }
else if ( atkProcess < 26 )		image_index = 5;
else if ( atkProcess < 40 ) {
	if ( keyAttack ) atkProcess = 45;
	if ( keyLeft ) dir = -1;
	if ( keyRight ) dir = 1;
}

if ( atkProcess > 40 && atkProcess < 45 ) {
	atkProcess = 0;
	canMove = 0;
	canAtk = 30;
}

//2단계 공격
if ( atkProcess < 45 ) {}
else if ( atkProcess < 49 ) {	image_index = 6; }
else if ( atkProcess < 53 )	{	image_index = 7;	xSpeed = dir*6;	ySpeed = ySpeed / 2; 
		instance_create_depth( x, y, deep, ob_atkEffect );
		ob_atkEffect.sprite_index = sp_atkEffect00;
		ob_atkEffect.image_index = 0;
}
else if ( atkProcess < 57 ) {	image_index = 8;	xSpeed = dir*5;	ySpeed = ySpeed / 1.6; }
else if ( atkProcess < 61 ) {	image_index = 9;	xSpeed = dir*4;	ySpeed = ySpeed / 1.2; }
else if ( atkProcess < 65 ) {	image_index = 10;	xSpeed = dir*3;	ySpeed = ySpeed / 1.2; }
else if ( atkProcess < 69 ) {	image_index = 11; }
else if ( atkProcess < 80 ) {
	if ( keyAttack ) atkProcess = 85;
	if ( keyLeft ) dir = -1;
	if ( keyRight ) dir = 1;
}

if ( atkProcess > 80 && atkProcess < 85 ) {
	atkProcess = 0;
	canMove = 0;
	canAtk = 30;
}

//3단계 공격
if ( atkProcess < 85 ) {}
else if ( atkProcess < 89 ) {	image_index = 12; }
else if ( atkProcess < 93 ) {	image_index = 13;	xSpeed = dir*6;	ySpeed = ySpeed / 2; }
else if ( atkProcess < 97 ) {	image_index = 14;	xSpeed = dir*5;	ySpeed = ySpeed / 1.6; 
		instance_create_depth( x, y, deep, ob_atkEffect );
		ob_atkEffect.sprite_index = sp_atkEffect00;
		ob_atkEffect.image_index = 0;
}
else if ( atkProcess < 101 ) {	image_index = 15;	xSpeed = dir*4;	ySpeed = ySpeed / 1.2; }
else if ( atkProcess < 105 ) {	image_index = 16;	xSpeed = dir*3;	ySpeed = ySpeed / 1.2; }
else if ( atkProcess < 109 ) {	image_index = 17; }
else if ( atkProcess < 120 ) {
	if ( keyAttack ) atkProcess = 130;
	if ( keyLeft ) dir = -1;
	if ( keyRight ) dir = 1;
}

if ( atkProcess > 120 && atkProcess < 130 ) {
	atkProcess = 0;
	canMove = 0;
	canAtk = 30;
}

//4단계 공격
if ( atkProcess < 130 ) {}
else if ( atkProcess < 135 ) {	image_index = 18;	xSpeed = dir*6;	ySpeed = ySpeed / 2; }
else if ( atkProcess < 140 ) {	image_index = 19;	xSpeed = dir*5;	ySpeed = ySpeed / 1.7;
		instance_create_depth( x, y, deep, ob_atkEffect );
		ob_atkEffect.sprite_index = sp_atkEffect00;
		ob_atkEffect.image_index = 0;
}
else if ( atkProcess < 145 ) {	image_index = 20;	xSpeed = dir*4;	ySpeed = ySpeed / 1.4; }
else if ( atkProcess < 150 ) {	image_index = 21;	xSpeed = dir*3;	ySpeed = ySpeed / 1.2; }
else if ( atkProcess < 155 ) image_index = 22;
else if ( atkProcess < 160 ) image_index = 23;
if ( atkProcess > 160 ) {
	atkProcess = 0;
	canMove = 0;
	canAtk = 30;
}