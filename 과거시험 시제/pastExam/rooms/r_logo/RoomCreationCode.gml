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
	
//공격 관련 변수
global.atkDmg		= 16;
global.atkPene		= 0;
global.atkShock		= 150;
global.atkMana		= 20;
global.atkCt		= 0;
global.atkCtMag		= 1.5;
global.atkComb		= 2;

global.kickDmg		= 5;
global.kickPene		= 0;
global.kickShock	= 210;
global.kickMana		= 50;
global.kickCt		= 0;
global.kickCtMag	= 1.5;
global.kickComb		= 4;

global.fireDmg		= 20;
global.firePene		= 0;
global.fireShock	= 200;
global.fireMana		= 50;
global.fireCt		= 0;
global.fireCtMag	= 1.5;
global.fireComb		= 2;

global.comCt		= 0;
global.comCtAlarm	= 0;
global.comIndex		= 4;
global.comAlarm		= 150;
	
global.hpMax	= 9;
global.hp		= global.hpMax;

global.mpMax	= 1000;
global.mp		= 0;

global.SM_BGM	= -1;
global.SM_BGM_SOUND = NULL;

global.atkDmgScale = 1;
global.kickDmgScale = 1;
global.fireDmgScale = 1;


//아이템 관련 변수
{
global.itemMax		= 4;	//아이템 종류, 패치값
global.itemSum		= 0;
global.itemGet 		= array_create(10, NULL);
global.itemGrade	= array_create(10, -1);

global.itemData		= array_create(global.itemMax, NULL);

global.tabDeleteIndex	= 0;
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

//스킬 변수
{
global.skMp = array_create(600, 0);
	
global.skMp[0]		= 0;	//null	
global.skMp[100]	= 200;	//편전
global.skMp[101]	= 300;	//총
global.skMp[102]	= 200;	//창 찌르기
global.skMp[103]	= 100;	//환도
global.skMp[104]	= 300;	//연사
global.skMp[105]	= 100;	//세총통
global.skMp[106]	= 0;	//장군전
	
global.skKul	= array_create(3, 0);

global.skKulData = array_create(600, 0);
global.skKulData[0]		= 0;
global.skKulData[100]	= 120;
global.skKulData[101]	= 180;
global.skKulData[102]	= 120;
global.skKulData[103]	= 120;
global.skKulData[104]	= 120;
global.skKulData[105]	= 90;
global.skKulData[106]	= 60;	//장군전
}
}
