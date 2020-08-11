// 0 플레이어 방향으로 걷기
// 1 플레이어 방향으로 달리기
// 2 공격
// 3 플레이어 반대 방향으로 달리기
// 4 스턴
// 5 넉백
// 99 사망

/////////////////////////////////////
/////// 산적 몬스터 스크립트 //////////
//////////////////////////////////// 

if( !global.isPause ) {
	switch ( state ) {
		case 0:
			sc_bossWalk(sp_mobBanditWalk);
			break;
		case 1:
			sc_bossRun(sp_mobBanditRun);
			break;
		case 2:
			sc_mobAttack(sp_mobBanditAttack);
			break;
		case 3:
			sc_bossRunAway(sp_mobBanditRun, 1.4);
			break;
		case 99:
			instance_destroy(self);
			break;
	}
}