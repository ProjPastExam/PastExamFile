
// State 변수사용 case로 상태 분리
// 0 평화상태
// 1 전쟁상태
// 2 공격모션
// 3 스턴
// 4 넉백

/////////////////////////////////////
/////// 산적 몬스터 스크립트 //////////
//////////////////////////////////// 

if( !global.isPause ) {
	switch ( state ) {
		case 0:
			sprite_index = sp_mobBanditWalk;
			if ( ( left == 3 || right == 3) ) { xSpeed *= -1; }
			x += xSpeed;
			break;
		case 1:
			sprite_index = sp_mobBanditRun;
			if ( xSpeed > 0 ) {
				if ( right == 3 ) { xSpeed *= -1; }
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
						if ( TargetB == 0 && !canAttack ) { canAttack = true; state = 2; }
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
						if ( TargetB == 0 && !canAttack ) { canAttack = true; state = 2; }
					}
				}
				// 플레이어가 몬스터의 오른쪽에 있고, 거리가 시야 미만일 때, 뒤로 돌기
				else if( TargetX > 0 && TargetX <= backSight ) { xSpeed *= -1; }
				// 거리에서 벗어나면 평화상태로 돌아감
//				else { isPeace = true; }
			}
			break;
		case 2:
			// 공격
			xSpeed = 0;
			sc_mobAtkSprite(sp_mobBanditAttack);
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
			state = 1;
			break;
	}
}
