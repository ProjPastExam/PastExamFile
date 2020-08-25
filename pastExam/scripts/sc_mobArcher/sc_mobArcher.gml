function sc_mobArcher(argument0) {
	// 원거리 몬스터 AI 스크립트
	// 프로젝트 과거시험
	// 작성자 : 유연휘

	///////////////////////////////
	/////	원거리 몬스터 AI	  /////
	///////////////////////////////

	// 움직이지 않고, 제자리에서 사격만 함 ( 넉백 당했을 경우 그 자리에서 사격 )

	sprite_index = argument0;
	// 선공 몬스터
	if ( isFirstAttack ) { isPeace = false; } 
	

	// 오른쪽으로 이동중일 때
	if( xSpeed > 0 ) {
		// 플레이어가 몬스터의 오른쪽에 있고, 거리가 시야 미만일 때
		if( TargetX >= 0 && TargetX <= frontSight*2 ) {
			// 플레이어가 사거리 내에 들어오면 공격
			if ( TargetR >= 0 && TargetR <= attackLength ) { 
				 if ( TargetB <= 100 && TargetB >= -128 && !canAttack ) { canAttack = true;  }
			}
		}
		// 플레이어가 몬스터의 왼쪽에 있고, 거리가 시야 미만일 때, 뒤로돌기
		else if( TargetX < -32 /*&& -TargetX <= backSight*/ ) { xSpeed *= -1; }
	}
	// 왼쪽으로 이동중일 때
	else if( xSpeed < 0 ) {
		// 플레이어가 몬스터의 왼쪽에 있고, 거리가 시야 미만일 때
		if( TargetX < 16 && -TargetX <= frontSight*2 ) {
			// 플레이어가 사거리 내에 들어오면 공격
			if ( TargetL <= 0 && -TargetL <= attackLength ) { 
				 if ( TargetB <= 100 && TargetB >= -128 && !canAttack ) { canAttack = true;  }
			}
		}
		// 플레이어가 몬스터의 오른쪽에 있고, 거리가 시야 미만일 때, 뒤로 돌기
		else if( TargetX > 16 /*&& TargetX <= backSight*/ ) { xSpeed *= -1; } 
	}
	// state 변경
	if ( canAttack ) { state = 2; }	// 공격
	if ( isPeace ) { state = 0; }	// 평화상태
}
