/////////////////////////////////////
/////// 산적 몬스터 스크립트 //////////
////////////////////////////////////

// 선공 몬스터 처리
if ( isFirstAttack ) { isPeace = false; }

// 움직임 & 공격
if(!global.isPause) {
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
//			else { isPeace = true; }	// 거리에서 벗어나면 평화상태로 돌아감
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
			//else { isPeace = true; }	// 거리에서 벗어나면 평화상태로 돌아감
		}
	}
	else if ( isPeace ) { // 평화상태 시에 단순한 좌우 이동
		//좌우 출돌 시 이동
		if ( ( left == 3 || right == 3) )		{ xSpeed *= -1; }
		// x축 이동
		x += xSpeed;
	}
}

if ( canAttack ) {  
	Attack_delay -= 1;
	if ( !Attack_delay ) {
		sc_mobAttack();
		Attack_delay = Attack_delay_MAX;
	}
}

// 스프라이트
if ( isPeace )						{ sprite_index = sp_mobBanditWalk; }
else if ( !isPeace && !canAttack )	{ sprite_index = sp_mobBanditRun; }
else if ( !isPeace && canAttack && !Attack_delay )	{ sprite_index = sp_mobBanditAttack; }