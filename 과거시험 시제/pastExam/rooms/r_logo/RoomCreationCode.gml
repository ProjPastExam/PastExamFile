VSLS_Init();

//window_set_fullscreen(true);


if (!VSLS_File_Load("saveFile")) {
	VSLS_Set("vol", 50);
	VSLS_Set("volBgm", 50);
	
	VSLS_Set("itemNum", 4);
	
	VSLS_Set("atkDmg", 16);
	VSLS_Set("atkPene", 0);
	VSLS_Set("atkShock", 150);
	VSLS_Set("atkMana", 20);
	
	VSLS_Set("kickDmg", 5);
	VSLS_Set("kickPene", 0);
	VSLS_Set("kickShock", 210);
	VSLS_Set("kickMana", 50);
	
	VSLS_Set("fireDmg", 20);
	VSLS_Set("firePene", 0);
	VSLS_Set("fireShock", 200);
	VSLS_Set("fireMana", 0);
	
	VSLS_Set("btLeft", vk_left);
	VSLS_Set("btRight", vk_right);
	VSLS_Set("btUp", vk_up);
	VSLS_Set("btDown", vk_down);
	VSLS_Set("btAtk", ord("X"));
	VSLS_Set("btDash", ord("Z"));
	VSLS_Set("btJump", ord("C"));
	VSLS_Set("btSk1", ord("A"));
	VSLS_Set("btSk2", ord("S"));
	VSLS_Set("btSk3", ord("D"));
	VSLS_Set("btInter", ord("F"));
	VSLS_Set("btEsc", vk_escape);
	VSLS_Set("btTap", vk_tab);
	
	VSLS_Set("language", "korean");
	
	VSLS_File_Save("saveFile");
}

//불러오기 전역
{
	sc_globalLoad();
}

//정적
{
global.hpMax	= 9;
global.hp		= global.hpMax;

global.mpMax	= 1000;
global.mp		= 0;

global.SM_BGM	= -1;
global.SM_BGM_SOUND = NULL;

//아이템 관련 변수
{
global.itemMax		= 4;	//아이템 종류, 패치값
global.itemSum		= 0;
global.itemGet 		= array_create(10, NULL);
global.itemGrade	= array_create(10, -1);

global.itemData		= array_create(global.itemMax, NULL);

//아이템 랜덤 스텟 = {공격, 관통, 마나, 돈}

global.itemData[0]	= {	//신기전 아이템
	itemSprite	: sp_Item_sin,
	itemInfo	: sp_ItemInfo_sin,
	itemKind	: 2,
	itemFunc	: function() { other.isSin = true; },
}
}

global.sk1		= 0;
global.sk2		= 0;
global.sk3		= 0;

global.roomBuffer	= NULL;
global.screenBuffer	= NULL;
global.camBufferX	= NULL;
global.camBufferY	= NULL;

//스킬 변수
{
global.skMp = array_create(600, 0);
	
global.skMp[0]		= 0;	//null	
global.skMp[100]	= 200;	//편전
global.skMp[101]	= 300;	//총
global.skMp[102]	= 200;
global.skMp[103]	= 100;
global.skMp[104]	= 300;
global.skMp[105]	= 200;
	
global.skKul	= array_create(3, 0);
}
}
