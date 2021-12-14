// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_globalLoad(){
	global.vol		= VSLS_Get("vol");
	global.volBgm	= VSLS_Get("volBgm");
	
	global.itemNum		= VSLS_Get("itemNum");

	//공격 관련 수치
	{
	global.atkDmg		= VSLS_Get("atkDmg");	//공격력
	global.atkPene		= VSLS_Get("atkPene");	//관통력
	global.atkShock		= VSLS_Get("atkShock");	//충격력
	global.atkMana		= VSLS_Get("atkMana");	//마나회복

	global.kickDmg		= VSLS_Get("kickDmg");
	global.kickPene		= VSLS_Get("kickPene");
	global.kickShock	= VSLS_Get("kickShock");
	global.kickMana		= VSLS_Get("kickMana");

	global.fireDmg		= VSLS_Get("fireDmg");
	global.firePene		= VSLS_Get("firePene");
	global.fireShock	= VSLS_Get("fireShock");
	global.fireMana		= VSLS_Get("fireMana");
	}
}