// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobSpawn(){
	
	dmgScale	= 1;
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
	
	sk121Index	= -1;
	
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
		lvDly = 15;
		if (global.isMobile)	lvDly = 20;
		hpFull -= hpFull/5;
		hitDelay += 15;
	}
	else if (global.level == 1)	
	{
		lvDly = 8;
		if (global.isMobile)	lvDly = 12;
		hitDelay += 8;
	}
	else
	{
		hpFull += hpFull/5;
		if (global.isMobile)	lvDly = 6;
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