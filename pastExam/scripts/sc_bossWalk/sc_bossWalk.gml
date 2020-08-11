// 평화상태 걷는 모션
sprite_index = argument0;


if ( ( left == 3 || right == 3) && walkcnt == 5 ) { xSpeed *= -1; walkcnt--; }
if ( walkcnt <= 4 ) { walkcnt--; }
if ( !walkcnt ) { walkcnt = 5; }

x += xSpeed;

// 오른쪽 이동
if ( xSpeed > 0 ) {
	if( TargetX >= 0 && TargetX <= frontSight*2 ) {
		isPeace = false;
		state = 1;
	}
}

// 왼쪽 이동
else if ( xSpeed < 0 ) {
	if( TargetX <= 0 && -TargetX <= frontSight*2 ) {
		isPeace = false;
		state = 1;
	}
}