// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobSpawn(){
	
	state		= 0;
	hitAfter	= 0;
	//hitAfter2	= 0;
	hitDir		= 0;
	delay		= 0;
	ad			= false;
	process		= 0;
	kbIndex		= 0;
	ctCount		= 0;
	dir			= -1;
	
	isDA		= false;
	isDK		= false;
	isDF		= false;
	
	bsPt		= 0;
	
	isStun		= false;
	indexStun	= false;
	isCounter	= false;
	
	nextState	= 0;
	
	hitLot		= 0;
	
	isDie		= false;
	isMoney		= false;
	
	atkDot		= 0;
	kickDot		= 0;
	fireDot		= 0;

	lvDly		= 0;
	if (global.level == 0)
	{
		lvDly = 12;
		hpFull -= hpFull/5;
	}
	else if (global.level == 1)	
	{
		lvDly = 6;
	}
	else
	{
		hpFull += hpFull/5;
	}
	
	hp			= hpFull;
	
	if (isHpUI) {
		global.uiHp = hp;
		global.uiHpIndex = hp;
		global.uiHpMax = hp;
		global.uiHpCir = uiHpCir;
		alarm[9] = 5;
	}
}