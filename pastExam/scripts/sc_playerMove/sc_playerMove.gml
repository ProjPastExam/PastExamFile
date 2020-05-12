//플레이어 이동 스크립트
//프로젝트 과거시험
//작성자 : 이시온
//스탭 실행 스크립트

//////////////////////////////////////////////////////////////////////////////////////////

///////////
//변수설정//
///////////

//타일 충돌 감지를 위한 변수
tileId	= layer_tilemap_get_id("Tile_Colision");
bottom1	= tilemap_get_at_pixel(tileId, x, bbox_bottom);
bottom2	= tilemap_get_at_pixel(tileId, x, bbox_bottom - 16 );
top		= tilemap_get_at_pixel(tileId, x, bbox_top);
left1	= tilemap_get_at_pixel(tileId, bbox_left, bbox_bottom - 16 );
left2	= tilemap_get_at_pixel(tileId, bbox_left, bbox_top + 16 );
right1	= tilemap_get_at_pixel(tileId, bbox_right, bbox_bottom - 16 );
right2	= tilemap_get_at_pixel(tileId, bbox_right, bbox_top + 16 );

pbottom	= bbox_bottom;




///////////////
//중력 및 점프//
///////////////

//밟고있는 타일에 따라 isJump값 지정
if ( ( bottom1 == 2 && bottom2 != 2 ) || bottom1 == 3 ) isJump = false;
else isJump = true;

if ( !isJump && ySpeed > 0 ) {
	ySpeed = 0;
	if ( bbox_bottom % 64 > 0 ) y -= bbox_bottom % 64;
}

//3단계 타일과 플레이어 머리의 충돌
if ( top = 3 ) { if ( ySpeed < 0 ) ySpeed = 5; }

//점프
if ( keyJump && !keyDown ) { 
	if ( !isJump && ( canMove == 0 ) ) { ySpeed = jumpSpeed; image_index = 0; }
}


//중력
if ( ySpeed > ob_game.gravmax ) ySpeed = ob_game.gravmax;
y = y + ySpeed;
ySpeed += ob_game.grav;

//점프 스프라이트
if ( isJump && ( canMove == 0) ) {
	if ( ySpeed < 0 ) sc_playerSprite(4);
	else sc_playerSprite(5);
}


////////
//이동//
////////

isDash = false;

//2,3단계 블록 위에서 이동
if ( canMove == 0 ) {
	if ( !isJump ) {
		//좌우 이동
		if ( keyLeft )	{
			xSpeed = -walkSpeed;
			dir = -1;
			sc_playerSprite(1);
		}
		if ( keyRight )	{
			xSpeed = walkSpeed;
			dir = 1;
			sc_playerSprite(1);
		}
		//좌우 대쉬
		if ( keyLeftDash )	{ xSpeed = -dashSpeed;	isDash = true;	dir = -1; }
		if ( keyRightDash )	{ xSpeed = dashSpeed;	isDash = true;	dir = 1; }
	}
	//공중에서 이동
	else {
		//좌우 이동
		if ( keyLeft && ( xSpeed > -walkSpeed ) )	{ xSpeed -= accSpeed; dir = -1; }
		if ( keyRight && ( xSpeed < walkSpeed ) )	{ xSpeed += accSpeed; dir = 1;}
	}
}

//3단계 블록과의 좌우 충돌
if ( ( left1 == 3 || left2 == 3) )		{ if ( xSpeed < 0 ) xSpeed = 0; }
if ( ( right1 == 3 || right2 == 3 ) )	{ if ( xSpeed > 0 ) xSpeed = 0; }

//실제 좌표 이동
x = x + xSpeed;

//이동 입력 없을시 정지
if ( !keyLeft && !keyRight && ( canMove == 0 ) ) {
	if ( !isJump ) sc_playerSprite(0);
	if ( xSpeed > accSpeed )		xSpeed -= accSpeed;
	else if ( xSpeed < -accSpeed )	xSpeed += accSpeed;
	else							xSpeed = 0;
}

/////////
//구르기//
/////////
if (rolling > -30) rolling -= 1;
if ((rolling <= -30) && keyJump && keyDown && canMove == 0) {
	rolling = 12;
	canMove = 3;
}
if (rolling > 0) {
	xSpeed = dir*rolling*3;
	ySpeed = 0;
}
if (rolling == 0 && canMove == 3) canMove = 0;


////////
//공격//
////////

if ( canAtk > 0 ) canAtk -= 1;

if ( keyAttack && ( canMove == 0 ) && ( canAtk <= 0 ) ) sc_atkKey();
if ( canMove == 1 ) sc_atkBase();

////////
//피격//
////////

if (hitAfter > 0) hitAfter--;
else if (canMove == 2) canMove = 0;

if (undie > 0) undie--;

if ( canMove == 2 ) {
	if ( xSpeed > accSpeed )		xSpeed -= 3;
	else if ( xSpeed < -accSpeed )	xSpeed += 3;
	else							xSpeed = 0;
}