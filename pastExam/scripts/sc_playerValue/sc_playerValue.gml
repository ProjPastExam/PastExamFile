//플레이어 변수 선언 스크립트
//프로젝트 과거시험
//작성자 : 이시온
//생성 실행 스크립트

//////////////////////////////////////////////////////////////////////////////////////////

/////////////////
//키 채크용 변수//
/////////////////

keyLeft			= false;	//좌로이동
keyRight		= false;	//우로이동
keyJump			= false;	//점프
keyLeftDash		= false;	//좌로대쉬
keyRightDash	= false;	//우로대쉬
keyDbClickL		= -1;		//더블클릭 채크
keyDbClickR		= -1;		//더블클릭 채크
keyAttack		= false;
keyDown			= false;	//특수기술 키


///////////////////
//플레이어 기본정보//
///////////////////

dir			= 1;
walkSpeed	= 6;
//dashSpeed	= 9;
accSpeed	= 0.8;
jumpSpeed	= -14.4;


////////////////
//플레이어 변수//
////////////////

canMove		= 0;				//이동 스크립트 사용 가능한지
// [ 0 기본값  1 공격  2 피격 ]
hitAfter	= 0;				//피격 후딜
undie		= 0;				//무적시간
undieEffect	= 0;				//무적시간 반짝이는데 쓸거

isJump		= false;			//점프중인지
isDash		= false;			//대쉬중인지
xSpeed		= 0;				//X축 스피드
ySpeed		= 0;				//Y축 스피드
//camFol		= true;				//카메라가 따라올지
indoor		= false;			//야외맵에서 실내인지
sprite_index = sp_playerStandSword;	//스프라이트


////////////
//액션 변수//
////////////

atkProcess	= 0;				//공격 모션
weaponR		= 0;				//주무기
weaponL		= 0;				//보조무기
atkKey		= 0;				//공격종류
canAtk		= 0;				//공격 후딜
rolling		= 0;				//구르기


//////////////
//카메라 제어//
//////////////

camSpeed	= 0.5;				//카메라 스피드
camX		= uc_get_x();
camY		= uc_get_y();



//////////////////////
///플레이어 스테이터스///
//////////////////////

// 체력
/*
hp		= 100;
hp_max	= hp;

mp		= 100;
mp_max	= mp;
*/

playerDmg = 10;

healthbar_width		= sprite_get_width(sp_healthbar)*global.hp_max/80;
healthbar_height	= sprite_get_height(sp_healthbar);
healthbar_x			= 100;
healthbar_y			= 0;

//energybar_width		= sprite_get_width(sp_energybar)*global.mp_max/80;
//energybar_height	= sprite_get_height(sp_energybar);
//energybar_x			= 100;
//energybar_y			= 50;