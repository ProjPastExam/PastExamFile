//몬스터 변수 선언 스크립트
//프로젝트 과거시험
//작성자 : 유연휘
//생성 실행 스크립트

////////////////////////////////////////////
/////////// 보스 몬스터 세팅 /////////////////
////////////////////////////////////////////

xSpeed	= argument0;		// 보스 몬스터 스피드
sSpeed	= xSpeed;
runSpeed = 1.7;

ySpeed	= 0;				// 몬스터 점프량
grav	= 0.15;

bossHP = 1000;
bossHP_MAX = bossHP;
frontSight		= 320;				// 앞쪽 시야(6칸)
backSight		= frontSight/2;		// 뒤쪽 시야(3칸)

boss_dmg		= 50;
len				= abs(ob_player.bbox_left - ob_player.x);
attackLength	= 100 + len;		// 몬스터 공격거리
Attack_delay	= room_speed; // room_speed = 60 (1초)
Attack_delay_MAX	= Attack_delay;
Attacked_delay	= 12;
Stern_delay		= 60;		// 1초 스턴
AttackedCount	= 0;		// 공격당한 횟수 저장
mobatkProcess	= 0;
dir				= 0;		// 몬스터가 보고 있는 방향 ( 1 왼쪽 )
walkcnt			= 5;

// 보스 몬스터 상태
state			= 0;
Attacked		= false;	// 공격 당하는 중(슈퍼 아머 등에 사용될 변수)
canAttack		= false;	// 공격 가능 여부
isFirstAttack	= false;	// 선공여부
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

orig_xscale = image_xscale;