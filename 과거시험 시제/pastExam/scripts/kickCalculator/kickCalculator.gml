// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_kickDmg(){
	var kickDmg = global.kickDmg * global.kickDmgScale;
	
	return kickDmg;
}


function sc_pl_kickMana(){
	var atkMana = global.kickMana;
	
	return atkMana;
}


function sc_pl_kickPene(){
	var atkPene = global.kickPene;
	
	
	return atkPene;
}


function sc_pl_kickShock(){
	//기본 데미지 및 아이템 배율 적용
	var atkShock = global.kickShock;

	
	
	return atkShock;
}