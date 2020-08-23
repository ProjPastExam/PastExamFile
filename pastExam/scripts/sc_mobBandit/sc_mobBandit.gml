function sc_mobBandit() {

	// State 변수사용 case로 상태 분리
	// 0 평화상태
	// 1 전쟁상태
	// 2 공격모션
	// 3 뒤로도망
	// 4 백스텝
	// 5 넉백
	// 99 사망

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
				sc_mobRunAway(sp_mobBanditRun, 1.4);
				break;
			case 4:
				sc_mobBackstep(sp_mobBanditRun);
				break;
			case 99:
				instance_destroy(self);
				break;
		}
	}


}
