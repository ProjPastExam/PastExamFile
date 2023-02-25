// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_globalLoad(){
	global.vol		= VSLS_Get("vol");
	global.volBgm	= VSLS_Get("volBgm");
	
	global.language		= VSLS_Get("language");
	
	//global.money		= VSLS_Get("money");
	global.coin			= 0;
	
	global.fullScreen	= VSLS_Get("fullScreen");
	global.reStory		= VSLS_Get("reStory");
	global.level		= VSLS_Get("level");
	
	global.testArr		= array_create(3, -1);
	global.testArr		= VSLS_Get("testArr");
	
	global.clearStage	= VSLS_Get("clearStage");
	
	//특전 관련 수치
	{
	global.abPointMax	= VSLS_Get("abPointMax");
	global.abPoint		= VSLS_Get("abPoint");
	global.abSoul		= VSLS_Get("abSoul");
	
	global.abIndex		= array_create(9, 0);
	global.abIndex[0]	= VSLS_Get("abAtk0");
	global.abIndex[1]	= VSLS_Get("abAtk1");
	global.abIndex[2]	= VSLS_Get("abAtk2");
	global.abIndex[3]	= VSLS_Get("abKick0");
	global.abIndex[4]	= VSLS_Get("abKick1");
	global.abIndex[5]	= VSLS_Get("abKick2");
	global.abIndex[6]	= VSLS_Get("abFire0");
	global.abIndex[7]	= VSLS_Get("abFire1");
	global.abIndex[8]	= VSLS_Get("abFire2");
	}

	//공격 관련 수치
	{
	/*
	global.atkDmg		= VSLS_Get("atkDmg");	//공격력
	global.atkPene		= VSLS_Get("atkPene");	//관통력
	global.atkShock		= VSLS_Get("atkShock");	//충격력
	global.atkMana		= VSLS_Get("atkMana");	//마나회복
	global.atkCt		= VSLS_Get("atkCt");
	global.atkCtMag		= VSLS_Get("atkCtMag");

	global.kickDmg		= VSLS_Get("kickDmg");
	global.kickPene		= VSLS_Get("kickPene");
	global.kickShock	= VSLS_Get("kickShock");
	global.kickMana		= VSLS_Get("kickMana");
	global.kickCt		= VSLS_Get("kickCt");
	global.kickCtMag	= VSLS_Get("kickCtMag");

	global.fireDmg		= VSLS_Get("fireDmg");
	global.firePene		= VSLS_Get("firePene");
	global.fireShock	= VSLS_Get("fireShock");
	global.fireMana		= VSLS_Get("fireMana");
	global.fireCt		= VSLS_Get("fireCt");
	global.fireCtMag	= VSLS_Get("fireCtMag");
	*/

	
	}
	
	//키 입력 수치
	{
	global.btLeft		= VSLS_Get("btLeft");
	global.btRight		= VSLS_Get("btRight");
	global.btUp			= VSLS_Get("btUp");
	global.btDown		= VSLS_Get("btDown");
	global.btAtk		= VSLS_Get("btAtk");
	global.btDash		= VSLS_Get("btDash");
	global.btJump		= VSLS_Get("btJump");
	global.btSk1		= VSLS_Get("btSk1");
	global.btSk2		= VSLS_Get("btSk2");
	global.btSk3		= VSLS_Get("btSk3");
	global.btInter		= VSLS_Get("btInter");
	global.btEsc		= VSLS_Get("btEsc");
	global.btTap		= VSLS_Get("btTap");
	
	global.gpLeft		= VSLS_Get("gpLeft");
	global.gpRight		= VSLS_Get("gpRight");
	global.gpUp			= VSLS_Get("gpUp");
	global.gpDown		= VSLS_Get("gpDown");
	global.gpAtk		= VSLS_Get("gpAtk");
	global.gpDash		= VSLS_Get("gpDash");
	global.gpJump		= VSLS_Get("gpJump");
	global.gpSk1		= VSLS_Get("gpSk1");
	global.gpSk2		= VSLS_Get("gpSk2");
	global.gpSk3		= VSLS_Get("gpSk3");
	global.gpInter		= VSLS_Get("gpInter");
	global.gpEsc		= VSLS_Get("gpEsc");
	global.gpTap		= VSLS_Get("gpTap");
	
	global.UIX		= VSLS_Get("UIX");
	global.UIY		= VSLS_Get("UIY");
	global.MapX		= VSLS_Get("MapX");
	global.MapY		= VSLS_Get("MapY");
	global.comX		= VSLS_Get("comX");
	global.comY		= VSLS_Get("comY");
	global.hpX		= VSLS_Get("hpX");
	global.hpY		= VSLS_Get("hpY");
	global.moneyX	= VSLS_Get("moneyX");
	global.moneyY	= VSLS_Get("moneyY");
	}
}