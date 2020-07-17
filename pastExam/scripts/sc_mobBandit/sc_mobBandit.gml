/////////////////////////////////////
/////// 산적 몬스터 스크립트 //////////
////////////////////////////////////


// 움직임 & 공격
if( !global.isPause ) {
	// 평화상태가 아닐 경우 (전쟁상태)
	if( !isPeace ) {
		// 오른쪽으로 이동중일 때
		if( xSpeed > 0 ) {
			if ( (right == 3) )		{ xSpeed *= -1; }
			// 플레이어가 몬스터의 오른쪽에 있고, 거리가 시야 미만일 때
			if( TargetX >= 0 && TargetX <= frontSight ) {
				// 이동속도 1.2배속
				var _targetX = sign(TargetX) * xSpeed * 1.2;
		
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
			// 거리에서 벗어나면 평화상태로 돌아감
			else { isPeace = true; }
		}
		// 왼쪽으로 이동중일 때
		else if( xSpeed < 0 ) {
			if ( (left == 3) )		{ xSpeed *= -1; }
			// 플레이어가 몬스터의 왼쪽에 있고, 거리가 시야 미만일 때
			if( TargetX <= 0 && -TargetX <= frontSight ) {
				// 이동속도 1.2배속
				var _targetX = sign(TargetX) * -xSpeed * 1.2;
		
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
			// 거리에서 벗어나면 평화상태로 돌아감
			else { isPeace = true; }
		}
	}
	// 평화상태 시에 단순한 좌우 이동
	else if ( isPeace ) {
		if ( ( left == 3 || right == 3) )		{ xSpeed *= -1; }
		x += xSpeed;
	}
}

// 공격
if ( canAttack ) {  
	Attack_delay -= 1;
	if ( !Attack_delay ) {
		xSpeed = 0;
		sc_playerHit(10, 0);
		
		// 방향에 따라 xSpeed 초기화
		if(dir >= 0) { xSpeed = -sSpeed; }
		else { xSpeed = sSpeed; }
		
		Attack_delay = Attack_delay_MAX;
		canAttack = false;
	}
}

// 스프라이트
if ( isPeace )						{ sprite_index = sp_mobBanditWalk; }
else if ( !isPeace && canAttack )	{ sc_mobAtkSprite(sp_mobBanditAttack); }
else if ( !isPeace && !canAttack )	{ sprite_index = sp_mobBanditRun; }
