// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_fireDmg(mode = 0){
	var fireDmg = global.fireDmg * global.fireDmgScale;
	
	return fireDmg;
}


function sc_pl_fireMana(mode = 0){
	var atkMana = global.fireMana;
	
	return atkMana;
}


function sc_pl_firePene(mode = 0){
	var atkPene = global.firePene;
	
	
	return atkPene;
}


function sc_pl_fireShock(mode = 0){
	//기본 데미지 및 아이템 배율 적용
	var atkShock = global.fireShock;

	
	
	return atkShock;
}


function sc_pl_fireCt(mode = 0) {
	var fireCt = global.fireCt + global.comCt/2;
	
	return fireCt;
}
