// 화살 오브젝트가 날아가서 ob_player에 맞으면 오브젝트가 사라지면서 데미지 계산
// 화살은 중력의 영향을 받음 ( 사거리보다 유효사거리가 작음 )
// 공격에 플레이어 넉백 효과 적용

arrowxSpeed = 5;

// 오른쪽 방향
if( image_xscale > 0 ) {
	x -= arrowxSpeed;
}
// 왼쪽 방향
else if( image_xscale < 0 ) {
	x += arrowxSpeed;
}

// 화살에 걸리는 중력
if ( arrowySpeed > ob_game.gravmax ) { arrowySpeed = ob_game.gravmax; }
y += arrowySpeed;
arrowySpeed += grav;