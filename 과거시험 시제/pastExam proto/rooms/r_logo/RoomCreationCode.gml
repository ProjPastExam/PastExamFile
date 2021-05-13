VSLS_Init();

window_set_fullscreen(true);

//particle 설정

global.hpMax	= 9;
global.hp		= global.hpMax;

global.mpMax	= 1000;
global.mp		= 0;

//공격 관련 수치
{
global.atkDmg		= 10;	//공격력
global.atkPene		= 0;	//관통력
global.atkShock		= 10;	//충격력
global.atkMana		= 10;	//마나회복

global.kickDmg		= 5;
global.kickPene		= 0;
global.kickShock	= 20;
global.kickMana		= 20;
}

global.sk1		= 0;
global.sk2		= 0;
global.sk3		= 0;

sc_itemSet();