// state = 1
// 분노상태의 몬스터(달리기)
sprite_index = argument0;

// 오른쪽으로 이동중일 때
if( xSpeed > 0 ) {
	if ( (right == 3 && walkcnt == 5) )		{ state=3; walkcnt--; }
	// 플레이어가 몬스터의 오른쪽에 있고, 거리가 시야 미만일 때
	if( TargetX >= 0 && TargetX <= frontSight*2 ) {
		// 이동속도 1.2배속
		var _targetX = sign(TargetX) * xSpeed * runSpeed;

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
			//	ySpeed = -5;
			}
		}
		// 플레이어가 사거리 내에 들어오면 공격
		if ( TargetR >= 0 && TargetR <= attackLength ) { 
			 if ( TargetB <= 10 && TargetB >= -128 && !canAttack ) { canAttack = true;  }
		}
	}
	// 플레이어가 몬스터의 왼쪽에 있고, 거리가 시야 미만일 때, 뒤로돌기
	else if( TargetX < -32 /*&& -TargetX <= backSight*/ ) { xSpeed *= -1; }
	// 거리에서 벗어나면 평화상태로 돌아감
	else if( TargetX >= 0  && TargetX > frontSight*2 ) { isPeace = true; }
}
// 왼쪽으로 이동중일 때
else if( xSpeed < 0 ) {
	if ( left == 3 && walkcnt == 5 )		{ state=3; walkcnt--; }
	// 플레이어가 몬스터의 왼쪽에 있고, 거리가 시야 미만일 때
	if( TargetX < 16 && -TargetX <= frontSight*2 ) {
		// 이동속도 1.2배속
		var _targetX = sign(TargetX) * -xSpeed * runSpeed;

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
			//	ySpeed = -5;
			}
		}
		// 플레이어가 사거리 내에 들어오면 공격
		if ( TargetL <= 0 && -TargetL <= attackLength ) { 
			 if ( TargetB <= 10 && TargetB >= -128 && !canAttack ) { canAttack = true;  }
		}
	}
	// 플레이어가 몬스터의 오른쪽에 있고, 거리가 시야 미만일 때, 뒤로 돌기
	else if( TargetX > 16 /*&& TargetX <= backSight*/ ) { xSpeed *= -1; }
	// 거리에서 벗어나면 평화상태로 돌아감
	else if ( TargetX < 0 && -TargetX > frontSight*2 ) { isPeace = true; }
}
if ( walkcnt <= 4 ) { walkcnt--; }
if ( !walkcnt ) { walkcnt = 5; }

// state 변경
if ( canAttack ) { state = 2; }	// 공격
if ( isPeace ) { state = 0; }	// 평화상태