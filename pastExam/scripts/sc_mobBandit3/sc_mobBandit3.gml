function sc_mobBandit3() {

	// State 변수사용 case로 상태 분리
	// 0 평화상태
	// 1 전쟁상태
	// 2 공격모션
	// 3 뒤로도망
	// 4 백스텝
	// 5 넉백
	// 98 피격
	// 99 사망

	/////////////////////////////////////
	/////// 산적 몬스터 스크립트 //////////
	//////////////////////////////////// 

	if( !global.isPause ) {
		switch ( state ) {
			case 0:
				sc_mobWalk(sp_mobBanditWalk3);
				break;
			case 1:
				sc_mobRun2(sp_mobBanditRun3);
				break;
			case 2:
				sc_mobAttack(sp_mobBanditAttack3);
				break;
			case 3:
				sc_mobRunAway(sp_mobBanditRun3, 1.8);
				break;
			case 4:
				sc_mobBackstep(sp_mobBanditBackstep3);
				break;
			case 5:
				sc_mobStand(sp_mobBanditStand3);
			case 98:
				sc_mobHit(sp_mobBanditHit3);
			case 99:
				sc_mobDead(sp_mobBanditDead3, 1);
				break;
		}
	}
}