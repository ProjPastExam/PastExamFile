function sc_mobValue() {
	//몬스터 변수 선언 스크립트
	//프로젝트 과거시험
	//작성자 : 유연휘
	//생성 실행 스크립트

	//////////////////////////////////////////////////
	/////////// 기본 근거리 몬스터 세팅 /////////////////
	//////////////////////////////////////////////////

	xSpeed	= choose(2.8, 3, 3.2);				// 몬스터 스피드
	sSpeed	= xSpeed;
	runSpeed = 1.7;

	ySpeed	= 0;				// 몬스터 점프량
	grav	= 0.12;

	mobHP = 100;
	mobHP_MAX = mobHP;
	frontSight		= 250;		// 앞쪽 시야(6칸)
	backSight		= frontSight/2;		// 뒤쪽 시야(3칸)
	maxTrack		= frontSight*1.5;		// 따라가는 최대 거리
	runHP			= 0;		// 도망치는 HP(퍼센트)
	adversarial		= 0;		// 적대도
	mob_dmg			= 10;
	len				= abs(ob_player.bbox_left - ob_player.x);
	attackLength	= choose(50,60,70) + len;		// 몬스터 공격거리
	Attack_delay	= room_speed; // room_speed = 60 (1초)
	Attack_delay_MAX	= Attack_delay;
	Attacked_delay	= 12;
	Stern_delay		= 60;		// 1초 스턴
	AttackedCount	= 0;		// 공격당한 횟수 저장
	mobatkProcess	= 0;
	dir				= 0;		// 몬스터가 보고 있는 방향 ( 1 왼쪽 )
	state			= 0;
	runAwaycnt		= 60;
	backStepcnt		= 60;
	walkcnt			= 5;


	Attacked		= false;	// 공격 당하는 중(슈퍼 아머 등에 사용될 변수)
	canAttack		= false;	// 공격 가능 여부
	isFirstAttack	= false;	// 선공여부
	isPeace			= true;		// 평화상태
	isStern			= false;	// 스턴상태
	isPushedBack	= false;	// 넉백상태


	// 몬스터 체력바
	healthbar_width		= sprite_get_width(sp_healthbar)*self.mobHP_MAX/80;
	healthbar_height	= sprite_get_height(sp_healthbar);
	healthbar_x			= self.x;
	healthbar_y			= self.y-80;

	// 플레이어 트레킹 변수
	TargetX	= 0;				//플레이어 X축
	TargetY	= 0;				//플레이어 Y축

	// 몬스터 스폰 위치 저장
	MobX = x;
	MobY = y;

	// 스폰 위치와 떨어진 거리
	FarX = 0;
	FarY = 0;


	orig_xscale = image_xscale;


}
