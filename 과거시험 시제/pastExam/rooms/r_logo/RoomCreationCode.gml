VSLS_Init();

//window_set_fullscreen(true);

VSLS_File_Load("saveFile")

if (VSLS_Get("vol" == undefined)) VSLS_Set("vol", 50);
if (VSLS_Get("volBgm" == undefined)) VSLS_Set("volBgm", 50);

if (VSLS_Get("itemNum" == undefined)) VSLS_Set("itemNum", 4);

if (VSLS_Get("atkDmg" == undefined))	VSLS_Set("atkDmg", 16);
if (VSLS_Get("atkPene" == undefined))	VSLS_Set("atkPene", 0);
if (VSLS_Get("atkShock" == undefined))	VSLS_Set("atkShock", 150);
if (VSLS_Get("atkMana" == undefined))	VSLS_Set("atkMana", 20);

if (VSLS_Get("kickDmg" == undefined))	VSLS_Set("kickDmg", 5);
if (VSLS_Get("kickPene" == undefined))	VSLS_Set("kickPene", 0);
if (VSLS_Get("kickShock" == undefined))	VSLS_Set("kickShock", 210);
if (VSLS_Get("kickMana" == undefined))	VSLS_Set("kickMana", 50);

if (VSLS_Get("fireDmg" == undefined))	VSLS_Set("fireDmg", 20);
if (VSLS_Get("firePene" == undefined))	VSLS_Set("firePene", 0);
if (VSLS_Get("fireShock" == undefined))	VSLS_Set("fireShock", 200);
if (VSLS_Get("fireMana" == undefined))	VSLS_Set("fireMana", 0);

if (VSLS_Get("btLeft" == undefined))	VSLS_Set("btLeft", vk_left);
if (VSLS_Get("btRight" == undefined))	VSLS_Set("btRight", vk_right);
if (VSLS_Get("btUp" == undefined))		VSLS_Set("btUp", vk_up);
if (VSLS_Get("btDown" == undefined))	VSLS_Set("btDown", vk_down);
if (VSLS_Get("btAtk" == undefined))		VSLS_Set("btAtk", ord("X"));
if (VSLS_Get("btDash" == undefined))	VSLS_Set("btDash", ord("Z"));
if (VSLS_Get("btJump" == undefined))	VSLS_Set("btJump", ord("C"));
if (VSLS_Get("btSk1" == undefined))		VSLS_Set("btSk1", ord("A"));
if (VSLS_Get("btSk2" == undefined))		VSLS_Set("btSk2", ord("S"));
if (VSLS_Get("btSk3" == undefined))		VSLS_Set("btSk3", ord("D"));
if (VSLS_Get("btInter" == undefined))	VSLS_Set("btInter", ord("F"));
if (VSLS_Get("btEsc" == undefined))		VSLS_Set("btEsc", vk_escape);
if (VSLS_Get("btTap" == undefined))		VSLS_Set("btTap", vk_tab);
	
if (VSLS_Get("language" == undefined))	VSLS_Set("language", "korean");
	
VSLS_File_Save("saveFile");


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

global.itemData[0]	= new itemStruct (
	0, sp_Item_sin, sp_ItemInfo_sin, 2, 
	function() { other.isSin = true; }
)

global.itemData[1]	= new itemStruct (
	1, sp_Item_kick, sp_ItemInfo_kick, 1, 
	function() { other.isFront = true; }
)
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
