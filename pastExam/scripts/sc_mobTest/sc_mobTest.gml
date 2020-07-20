
// State 변수사용 case로 상태 분리
// 0 평화상태
// 1 전쟁상태
// 2 공격모션
// 3 뒤로도망
// 4 스턴
// 5 넉백

/////////////////////////////////////
/////// 산적 몬스터 스크립트 //////////
//////////////////////////////////// 

if( !global.isPause ) {
	switch ( state ) {
		case 0:
			sc_mobWalk(sp_mobBanditWalk);
			break;
		case 1:
			sc_mobRun(sp_mobBanditRun);
			break;
		case 2:
			sc_mobAttack(sp_mobBanditAttack);
			break;
		case 3:
			sc_mobAttack(sp_mobBanditAttack);
			break;
	}
}