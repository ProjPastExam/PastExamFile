// 화살 오브젝트가 날아가서 ob_player에 맞으면 오브젝트가 사라지면서 데미지 계산
// 화살은 중력의 영향을 받음 ( 사거리보다 유효사거리가 작음 )
// 공격에 플레이어 넉백 효과 적용

// argument0 : 공격 방향
var dir = argument0;

var arrowxSpeed = 8;

// 오른쪽 방향
if( dir >= 0 ) {
	x -= arrowxSpeed;
}
// 왼쪽 방향
else if( dir < 0 ) {
	x += arrowxSpeed;
}

/*/ 화살에 걸리는 중력
if ( arrowySpeed > ob_game.gravmax ) { arrowySpeed = ob_game.gravmax; }
y += arrowySpeed;
arrowySpeed += grav;*/

if ( place_meeting(x, y, ob_player) ) {
	sc_playerHit(10, 1);
	instance_destroy(self);
}