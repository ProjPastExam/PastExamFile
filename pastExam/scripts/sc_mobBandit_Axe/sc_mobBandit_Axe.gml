// 화살 오브젝트가 날아가서 ob_player에 맞으면 오브젝트가 사라지면서 데미지 계산
// 화살은 중력의 영향을 받음 ( 사거리보다 유효사거리가 작음 )
// 공격에 플레이어 넉백 효과 적용


//타일 충돌 감지를 위한 변수
tileId	= layer_tilemap_get_id("Tile_Colision");
bottom1	= tilemap_get_at_pixel(tileId, x, bbox_bottom);
bottom2	= tilemap_get_at_pixel(tileId, x, bbox_bottom - 16 );
top		= tilemap_get_at_pixel(tileId, x, bbox_top);
left	= tilemap_get_at_pixel(tileId, bbox_left, bbox_bottom - 16 );
right	= tilemap_get_at_pixel(tileId, bbox_right, bbox_bottom - 16 );

if( left == 3 || right == 3 || top == 3) {
	if( left == 3 )	{ image_index = 0; }
	if( right == 3 ) { 
		image_index = 0; 
		if( image_xscale > 0 ) { image_xscale *= -1; }
	}
	if( top == 3 ) { 
		image_index = 3;
		if( image_xscale > 0 ) { image_xscale *= -1; }
	}
	arrowxSpeed = 0;
	arrowySpeed = 0;
	disappear--;
	if( !disappear ) { instance_destroy(self); }
}
else {
	arrowxSpeed = 8;
	
	// 도끼 스프라이트
	spriteProcess += 1;
/*	if ( spriteProcess < 2 )		{ image_index = 0; }
	else if ( spriteProcess < 4 )	{ image_index = 1; } 
	else if ( spriteProcess < 6 )	{ image_index = 2; }
	else if ( spriteProcess < 8 )	{ image_index = 3; }
	else if ( spriteProcess < 10 )	{ image_index = 4; }
	else if ( spriteProcess < 12 )	{ image_index = 5; }
	else if ( spriteProcess < 14 )	{ image_index = 6; }
	else if ( spriteProcess < 16 )	{ image_index = 7; }
	else if ( spriteProcess < 18 )	{ image_index = 8; }
	else if ( spriteProcess < 20 )	{ image_index = 9; }
	else if ( spriteProcess < 22 )	{ image_index = 10; }
	if( spriteProcess >= 23 ) { spriteProcess = 0; }*/
	
	if ( spriteProcess < 1 )		{ image_index = 0; }
	else if ( spriteProcess < 2 )	{ image_index = 1; } 
	else if ( spriteProcess < 3 )	{ image_index = 2; }
	else if ( spriteProcess < 4 )	{ image_index = 3; }
	else if ( spriteProcess < 5 )	{ image_index = 4; }
	else if ( spriteProcess < 6 )	{ image_index = 5; }
	else if ( spriteProcess < 7 )	{ image_index = 6; }
	else if ( spriteProcess < 8 )	{ image_index = 7; }
	else if ( spriteProcess < 9 )	{ image_index = 8; }
	else if ( spriteProcess < 10 )	{ image_index = 9; }
	else if ( spriteProcess < 11 )	{ image_index = 10; }
	if( spriteProcess >= 11 ) { spriteProcess = 0; }
	
	if ( place_meeting(x, y, ob_player) ) {
		sc_playerHit(10, 1);
		instance_destroy(self);
	}
}

//3단계 타일과 도끼 바닥의 충돌
if ( bottom1 == 3 ) {
	image_index = 3;
	arrowySpeed = 0;
	arrowxSpeed = 0;
	disappear--;
	if( !disappear ) { instance_destroy(self); }
	if ( bbox_bottom % 64 > 0 ) y -= bbox_bottom % 64;
}

// x축 이동 오른쪽 방향
if( dir >= 0 ) {
	x -= arrowxSpeed;
}
// x축 이동 왼쪽 방향
else if( dir < 0 ) {
	x += arrowxSpeed;
}

// y축 이동(중력)
if ( arrowySpeed > ob_game.gravmax ) arrowySpeed = ob_game.gravmax;
y += arrowySpeed;
arrowySpeed += grav;

