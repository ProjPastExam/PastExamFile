// 몬스터 이동 AI 스크립트(메이플스토리 리본돼지)
// 프로젝트 과거시험
// 작성자 : 유연휘

///////////////////////////////
/////	인간형 몬스터 AI	  /////
///////////////////////////////

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


if( AttackedCount != 0 && AttackedCount % 5 == 0 ) { isStern = true; }

// 평화상태가 아닐 경우 (전쟁상태)
if( !isPeace ) {
	// 오른쪽으로 이동중일 때
	if( xSpeed > 0 ) {
		if ( (right == 3) )		{ xSpeed *= -1; }
		// 플레이어가 몬스터의 오른쪽에 있고, 거리가 시야 미만일 때
		if( TargetX >= 0 && TargetX <= frontSight ) {
			
			var _targetX = sign(TargetX) * xSpeed * 1.1 /*/ 3*/;
	
			if ( place_meeting( x + _targetX, y, ob_player ) ) {
			 while (!place_meeting(x + sign(_targetX), y, ob_player)) {
				 x += sign(_targetX);
			  }
			   _targetX = 0;
			}
			x += _targetX;			
			// 플레이어가 몬스터의 위에 있으면, 점프
			if ( TargetB < -16 && TargetB  > -256) {
				if ( bottom1 == 2 && bottom2 != 2  && ySpeed > 0 || bottom1 == 3 ) {
					ySpeed = -5;
				}
			}
			// 플레이어가 사거리 내에 들어오면 공격
			if ( TargetR >= 0 && TargetR <= attackLength ) { 
				 if ( TargetB == 0 && !canAttack ) { canAttack = true; }
			}
		}
		// 플레이어가 몬스터의 왼쪽에 있고, 거리가 시야 미만일 때, 뒤로돌기
		else if( TargetX < -64 && -TargetX <= backSight ) { xSpeed *= -1; }
//		else { isPeace = true; }	// 거리에서 벗어나면 평화상태로 돌아감
	}
	
	// 왼쪽으로 이동중일 때
	else if( xSpeed < 0 ) {
		if ( (left == 3) )		{ xSpeed *= -1; }
		// 플레이어가 몬스터의 왼쪽에 있고, 거리가 시야 미만일 때
		if( TargetX <= 0 && -TargetX <= frontSight ) {
			
			var _targetX = sign(TargetX) * -xSpeed * 1.1/* / 3 */;
	
			if ( place_meeting( x + _targetX, y, ob_player ) ) {
			 while ( !place_meeting( x + sign(_targetX), y, ob_player ) ) {
				 x += sign(_targetX);
			  }
			   _targetX = 0;
			}
			x += _targetX;
			// 플레이어가 몬스터보다 위에 있으면, 점프
			if ( TargetB < -16 && TargetB  > -256) {
				if ( bottom1 == 2 && bottom2 != 2  && ySpeed > 0 || bottom1 == 3 ) {
					ySpeed = -5;
				}
			}
			// 플레이어가 사거리 내에 들어오면 공격
			if ( TargetL <= 0 && -TargetL <= attackLength ) { 
				if ( TargetB == 0 && !canAttack ) { canAttack = true; }
			}
		}
		// 플레이어가 몬스터의 오른쪽에 있고, 거리가 시야 미만일 때, 뒤로 돌기
		else if( TargetX > 0 && TargetX <= backSight ) { xSpeed *= -1; }
//		else { isPeace = true; }	// 거리에서 벗어나면 평화상태로 돌아감
	}
}
else if ( isPeace ) { // 평화상태 시에 단순한 좌우 이동
	//좌우 출돌 시 이동
	if ( ( left == 3 || right == 3) )		{ xSpeed *= -1; }
	// x축 이동
	x += xSpeed;
}




///////////////////////////////////
//////// 몬스터 공격 & 피격 /////////
///////////////////////////////////


// 1초에 한 번씩 공격
if ( canAttack ) {  
	Attack_delay -= 1;
	if ( !Attack_delay ) { sc_mobAttack(); Attack_delay = room_speed; }
}

// 스턴상태
if ( isStern ) { 
	isPeace = NULL; 
	canAttack = false;
	image_index = sp_mobStern;
	image_xscale = orig_xscale * sign(xSpeed);
	Stern_delay -= 1;
	xSpeed = 0.1;			// xSpeed가 0이되면 몬스터 스프라이트가 사라짐
	if ( !Stern_delay ) { 
		if( image_xscale > 0 ) { xSpeed = sSpeed; }
		else if ( image_xscale < 0 ) { xSpeed = -sSpeed; }
		isStern = false;
		Stern_delay = 60; 
		isPeace = false;
		AttackedCount = 0;
	}
}

// 넉백 효과
if ( isPushedBack ) { //오른쪽보고있으면 x좌표 -
	if ( image_xscale > 0) { x -= 30; }
	else { x += 30; }
	isStern = true;
	isPushedBack = false;
}

// 피격
if ( place_meeting(x, y, ob_atkEffect) ) {  
	Attacked_delay -= 1;
	if ( !Attacked_delay ) { sc_playerAttack(); Attacked_delay = 12; }
}