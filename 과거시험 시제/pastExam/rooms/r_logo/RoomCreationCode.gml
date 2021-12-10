VSLS_Init();

//window_set_fullscreen(true);


if (VSLS_File_Load("saveFile")) {
	
}
else {
	global.hpMax	= 9;
	global.hp		= global.hpMax;

	global.mpMax	= 1000;
	global.mp		= 0;

	global.vol		= 50;
	global.volBgm	= 50;
	global.SM_BGM	= -1;
	global.SM_BGM_SOUND = NULL;

	global.itemMax		= 4;
	global.itemSum		= 0;
	global.itemNum		= 4;
	global.itemGet 		= array_create(10, -1);
	global.itemGrade	= array_create(10, -1);

	//공격 관련 수치
	{
	global.atkDmg		= 16;	//공격력
	global.atkPene		= 0;	//관통력
	global.atkShock		= 150;	//충격력
	global.atkMana		= 20;	//마나회복

	global.kickDmg		= 5;
	global.kickPene		= 0;
	global.kickShock	= 210;
	global.kickMana		= 50;

	global.fireDmg		= 10;
	global.firePene		= 0;
	global.fireShock	= 200;
	global.fireMana		= 0;
	}
}

global.sk1		= 103;
global.sk2		= 102;
global.sk3		= 101;

