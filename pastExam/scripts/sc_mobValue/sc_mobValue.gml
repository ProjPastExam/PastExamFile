//몬스터 변수 선언 스크립트
//프로젝트 과거시험
//작성자 : 유연휘
//생성 실행 스크립트

//////////////////////////////////////////////////

xSpeed	= 3;				// 몬스터 스피드
sSpeed	= xSpeed;

ySpeed	= 0;				// 몬스터 점프량
grav	= 0.12;

mobHP = 100;
mobHP_MAX = mobHP;
frontSight		= 384;		// 앞쪽 시야(6칸)
backSight		= 192;		// 뒤쪽 시야(3칸)
maxTrack		= 450;		// 따라가는 최대 거리
runHP			= 0;		// 도망치는 HP(퍼센트)
adversarial		= 0;		// 적대도
mob_dmg			= 10;
attackLength	= 64 + abs(ob_player.bbox_left - ob_player.x);		// 몬스터 공격거리
Attack_delay	= room_speed; // room_speed = 60 (1초)
Attacked_delay	= 12;
Stern_delay		= 60;		// 1초 스턴
AttackedCount	= 0;		// 공격당한 횟수 저장


Attacked		= false;	// 공격 당하는 중(슈퍼 아머 등에 사용될 변수)
canAttack		= false;	// 공격 가능 여부
isFirstAttack	= false;	// 선공여부
isPeace			= true;		// 평화상태
isStern			= false;	// 스턴상태
isPushedBack	= false;	// 넉백상태
isAngry			= false;	// 분노상태

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