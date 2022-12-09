 VSLS_Init();

//window_set_fullscreen(true);

sc_gameLoad();

global.screenX = window_get_width();
global.screenY = window_get_height();

instance_create_depth(0, 0, 0, Camera);

//불러오기 전역
{
	sc_globalLoad();
}
//global.fullScreen = false;
window_set_fullscreen(global.fullScreen);
window_set_size(global.screenX, global.screenY);
surface_resize(application_surface, 1920, 1080);

//정적
{
global.gameEnd		= false;
global.lan			= 0;
global.lanChange	= false;
	
//공격 관련 변수
global.atkDmg		= 10;
global.atkPene		= 0;
global.atkShock		= 150;
global.atkMana		= 30;
global.atkCt		= 0.0;
global.atkCtMag		= 10;
global.atkComb		= 1;

global.kickDmg		= 10;
global.kickPene		= 0;
global.kickShock	= 210;
global.kickMana		= 30;
global.kickCt		= 0.0;
global.kickCtMag	= 10;
global.kickComb		= 1;

global.fireDmg		= 10;
global.firePene		= 0;
global.fireShock	= 200;
global.fireMana		= 30;
global.fireCt		= 0.0;
global.fireCtMag	= 20;
global.fireComb		= 1;

global.comCt		= 0;
global.comCtAlarm	= 0;
global.comIndex		= 4;
global.comAlarm		= 180;
	
global.hpMax	= 9;
global.hp		= global.hpMax;

global.mpMax	= 1000;
global.mp		= 0;

global.abSoulMax	= 999;

global.SM_BGM	= -1;
global.SM_BGM_SOUND = NULL;

//0. 데미지		1. 마나회복		2. 연타수치		3. 치명타 보정	4. 치명타 공격력
global.itemScale = array_create(3);
global.itemScale[0] = array_create(5, 0);
global.itemScale[1] = array_create(5, 0);
global.itemScale[2] = array_create(5, 0);

global.atkDmgScale = 1;
global.kickDmgScale = 1;
global.fireDmgScale = 1;


//아이템 관련 변수
{
global.itemMax		= 11;	//아이템 종류, 패치값
global.itemSum		= 0;
global.itemGet 		= array_create(10, NULL);
global.itemGrade	= array_create(10, -1);
global.itemNum		= 6;

global.itemData		= array_create(global.itemMax, NULL);

global.item8Index	= 20;

global.tabDeleteIndex	= 0;
global.tabDeleteIndex2	= 0;
global.tabDeleteIndex3	= 0;
global.tabDeleteIndex4	= 0;
global.tabDeleteIs		= 0;
global.tabDeleteNum		= 0;


global.atkCtMagScaleItem	= 1;
global.kickCtMagScaleItem	= 1;
global.fireCtMagScaleItem	= 1;
sc_itemData();

}


global.sk1		= 0;
global.sk2		= 0;
global.sk3		= 0;

global.roomBuffer	= NULL;
global.screenBuffer	= NULL;
global.camBufferX	= NULL;
global.camBufferY	= NULL;

global.mapBuffer	= -1;

global.uiHp			= 1;
global.uiHpMax		= 1;
global.uiHpIndex	= 1;
global.uiHpCir		= noone;

global.money = 0;
global.moneyBuffer	= 0;

global.gamepadSlot	= 0;
sc_getPadSlot();

//0 : 기본	1 : 체력	2 : 공격력	3 : 경직도	4 : 이동속도
global.ranStage1	= 0;

//0 : 기본	1 : 체력회복	2 : 공격력	3 : 치명타	4 : 돈
global.ranStage2	= 0

//스킬 변수


global.skKul	= array_create(3, 0);
sc_skData();

//대장간 변수
global.smith1	= 50;
global.smith2	= 50;
global.smith3	= 50;

}
