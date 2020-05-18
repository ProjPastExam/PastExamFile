// 원거리 몬스터 AI 스크립트
// 프로젝트 과거시험
// 작성자 : 유연휘

///////////////////////////////
/////	원거리 몬스터 AI	  /////
///////////////////////////////

// 움직이지 않고, 제자리에서 사격만 함 ( 넉백 당했을 경우 그 자리에서 사격 )

//타일 충돌 감지를 위한 변수
tileId	= layer_tilemap_get_id("Tile_Colision");
bottom1	= tilemap_get_at_pixel(tileId, x, bbox_bottom);
bottom2	= tilemap_get_at_pixel(tileId, x, bbox_bottom - 16 );
top		= tilemap_get_at_pixel(tileId, x, bbox_top);
left	= tilemap_get_at_pixel(tileId, bbox_left, bbox_bottom - 16 );
right	= tilemap_get_at_pixel(tileId, bbox_right, bbox_bottom - 16 );

// 플레이어와의 상호작용을 위한 변수
mleft	= bbox_left;
mright	= bbox_right;
mbottom	= bbox_bottom;

// 몬스터 스폰위치에서 떨어진 거리 계산 ( 적대도 시스템 활용 )
FarX = MobX - x;
FarY = MobY - y;

//2단계 타일과 몬스터 바닥의 충돌
if ( bottom1 == 2 && bottom2 != 2  && ySpeed > 0 ) {
	ySpeed = 0;
	if ( bbox_bottom % 64 > 0 ) y -= bbox_bottom % 64;
}

//3단계 타일과 몬스터 바닥의 충돌
if ( bottom1 == 3 ) {
	ySpeed = 0;
	if ( bbox_bottom % 64 > 0 ) y -= bbox_bottom % 64;
}

//3단계 타일과 몬스터 머리의 충돌
if ( top == 3 ) { if ( ySpeed < 0 ) ySpeed = 5; }

// 몬스터 스프라이트
// sprite_index = sp_mobAI;

// 몬스터 방향 바꾸기
var dir;
if(xSpeed >= 0) { dir = 1; }
else { dir = -1; }
image_xscale = orig_xscale * dir;

// 플레이어 트렉킹 코드
TargetX = ob_player.x - x;
TargetY = ob_player.y - y;
TargetB = ob_player.pbottom - mbottom;
TargetL = ob_player.x - mleft;
TargetR = ob_player.x - mright;

// y축 이동(중력)
if ( ySpeed > ob_game.gravmax ) ySpeed = ob_game.gravmax;
y += ySpeed;
ySpeed += grav;

// 선공 몬스터 처리
if ( isFirstAttack ) { isPeace = false; }