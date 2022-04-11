// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_fireDmg(){
	var fireDmg = global.fireDmg * global.fireDmgScale;
	
	return fireDmg;
}


function sc_pl_fireMana(){
	var atkMana = global.fireMana;
	
	return atkMana;
}


function sc_pl_firePene(){
	var atkPene = global.firePene;
	
	
	return atkPene;
}


function sc_pl_fireShock(){
	//기본 데미지 및 아이템 배율 적용
	var atkShock = global.fireShock;

	
	
	return atkShock;
}


function sc_pl_fireCt() {
	var fireCt = global.fireCt;
	
	return fireCt;
}
