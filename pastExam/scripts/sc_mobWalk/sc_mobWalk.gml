// 평화상태 걷는 모션

sprite_index = argument0;

if ( ( left == 3 || right == 3) ) { xSpeed *= -1; }
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