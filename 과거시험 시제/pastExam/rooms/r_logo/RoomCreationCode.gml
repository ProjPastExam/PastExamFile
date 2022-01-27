VSLS_Init();

//window_set_fullscreen(true);
global.version = 1;
sc_gameLoad();


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


//신기전 아이템
global.itemData[0]	= new itemStruct ( 0, sp_Item_sin, sp_ItemInfo_sin, 2, 
	function() { other.isSin = true; })

//전방 3연속 발차기 아이템
global.itemData[1]	= new itemStruct ( 1, sp_Item_kick, sp_ItemInfo_kick, 1, 
	function() { other.isFront = true; })

//마나소모시 화살 공격 아이템
global.itemData[2]	= new itemStruct ( 2, sp_Item_kick, sp_ItemInfo_kick, 0, 
	function() { other.item2 = true;	other.item2Index1 = 0;	other.item2Index2 = global.mp;	other.item2Index3 = 0; })

//공중의 적 공격 시 추가데미지 아이템
global.itemData[3]	= new itemStruct ( 3, sp_Item_jump, sp_ItemInfo_jump, 0, 
	function() { other.itemJump = true; })
	
//후방공격 후 전방공격 시 죽창 찌르기 아이템
global.itemData[4]	= new itemStruct ( 4, sp_Item_jump, sp_ItemInfo_jump, 1, 
	function() { other.item4 = true;	other.item4Index = true; })
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
global.skMp[102]	= 200;	//창 찌르기
global.skMp[103]	= 100;	//환도
global.skMp[104]	= 300;	//연사
global.skMp[105]	= 200;	//세총통
global.skMp[106]	= 0;	//장군전
	
global.skKul	= array_create(3, 0);

global.skKulData = array_create(600, 0);
global.skKulData[0]		= 0;
global.skKulData[100]	= 120;
global.skKulData[101]	= 180;
global.skKulData[102]	= 120;
global.skKulData[103]	= 120;
global.skKulData[104]	= 120;
global.skKulData[105]	= 60;
global.skKulData[106]	= 60;	//장군전
}
}
