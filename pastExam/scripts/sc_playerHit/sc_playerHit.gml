//플레이어 피격 함수
//몬스터의 공격에 호출하면 플레이어의 대미지, 경직이 설정됨

var damage	= argument0;	//플레이어가 입을 대미지
var impact	= argument1;	//플레이어가 받는 경직도
//0은 경직없음 1은 약한 경직, 2은 강한 경직, 3은 날라감


if (ob_player.undie <= 0 ){
	global.hp -= damage;
	ob_player.undie = 60;

	if (impact == 1) {
		ob_player.hitAfter = 20;
		ob_player.xSpeed += -ob_player.dir*18;
		ob_player.canMove = 2
		uc_shake(5,0.5);
	}
}