// 원거리 몬스터 AI 스크립트
// 프로젝트 과거시험
// 작성자 : 유연휘

///////////////////////////////
/////	원거리 몬스터 AI	  /////
///////////////////////////////

// 움직이지 않고, 제자리에서 사격만 함 ( 넉백 당했을 경우 그 자리에서 사격 )

if(!global.isPause) {
// 선공 몬스터
if ( isFirstAttack ) { isPeace = false; }

// 평화상태가 아닐 경우 (전쟁상태)
if( !isPeace ) {
	// 오른쪽을 바라보고 있을 때
	if( image_xscale > 0 ) {
		// 플레이어가 몬스터의 오른쪽에 있고, 거리가 시야 미만일 때
		if( TargetX >= 0 && TargetX <= frontSight ) {
			// 플레이어가 사거리 내에 들어오면 공격
			if ( TargetR >= 0 && TargetR <= attackLength ) {
				if ( !canAttack ) { canAttack = true; }
			}
		}
		// 플레이어가 몬스터의 왼쪽에 있고, 거리가 시야 미만일 때, 뒤로돌기
		else if( TargetX < -64 && -TargetX <= backSight ) { image_xscale *= -1; }
	}
	// 왼쪽을 바라보고 있을 때
	else if( image_xscale < 0 ) {
		// 플레이어가 몬스터의 왼쪽에 있고, 거리가 시야 미만일 때
		if( TargetX <= 0 && -TargetX <= frontSight ) {
			// 플레이어가 사거리 내에 들어오면 공격
			if ( TargetL <= 0 && -TargetL <= attackLength ) { 
				if ( !canAttack ) { canAttack = true; }
			}
		}
		// 플레이어가 몬스터의 오른쪽에 있고, 거리가 시야 미만일 때, 뒤로 돌기
		else if( TargetX > 0 && TargetX <= backSight ) { image_xscale *= -1; }
	}
}
}