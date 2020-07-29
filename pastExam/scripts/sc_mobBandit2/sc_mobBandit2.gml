
// State 변수사용 case로 상태 분리
// 0 평화상태
// 1 전쟁상태
// 2 공격모션
// 3 뒤로도망
// 4 스턴
// 5 넉백
// 99 사망

/////////////////////////////////////
/////// 산적 몬스터 스크립트 //////////
//////////////////////////////////// 

if( !global.isPause ) {
	switch ( state ) {
		case 0:
			sc_mobWalk(sp_mobBanditWalk2);
			break;
		case 1:
			sc_mobRun(sp_mobBanditRun2);
			break;
		case 2:
			sc_mobAttack2(sp_mobBanditAttack2);
			break;
		case 3:
			sc_mobRunAway(sp_mobBanditRun2, 1.8);
			break;
		case 99:
			instance_destroy(self);
			break;
	}
}