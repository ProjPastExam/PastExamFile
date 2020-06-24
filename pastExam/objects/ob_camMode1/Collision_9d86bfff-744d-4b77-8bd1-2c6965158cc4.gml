//플레이어와 충돌시 카메라 모드를 0으로 만드는 오브젝트
//카메라 모드 0은 플레이어 추적 모드

if ( ob_player.camMode != 1 ) {
	ob_player.camMode = 1;
	ob_player.camSpeed = 0.05;
}