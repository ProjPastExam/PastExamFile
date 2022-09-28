// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_fireDmg(mode = 0){
	var fireDmg = global.fireDmg;
	if (mode == 1) return fireDmg;
	
	fireDmg = (global.fireDmg + sc_abScaleCalculator(7)) * sc_itemScaleCalculator(2, 0);
	if (mode == 0) return fireDmg;
	
	fireDmg -= global.fireDmg;
	if (mode == 2) return fireDmg;
}


function sc_pl_fireMana(mode = 0){
	var atkMana = global.fireMana;
	if (mode == 1) return atkMana;
	
	atkMana = global.fireMana * sc_itemScaleCalculator(2, 1);
	if (mode == 0) return atkMana;
	
	atkMana -= global.fireMana;
	if (mode == 2) return atkMana;
}

function sc_pl_fireComb(mode = 0) {
	var fireComb = global.fireComb * sc_itemScaleCalculator(2, 2);
	
	if (mode == 1) return string_format(fireComb, 0, 1);
	
	fireComb = global.fireComb * sc_itemScaleCalculator(2, 2);
	if (mode == 0) return fireComb;
	
	fireComb -= global.fireComb;
	if (mode == 2) return string_format(fireComb, 0, 1);
	
}

function sc_pl_fireCt(mode = 0) {
	var fireCt = (global.fireCt + sc_abScaleCalculator(8)/100) * sc_itemScaleCalculator(2, 3);
	if (mode == 1) return fireCt*100;
	
	//fireCt = (global.fireCt + sc_abScaleCalculator(8)) * sc_itemScaleCalculator(2, 3);
	if (mode == 0) return fireCt;
	
	fireCt -= global.fireCt;
	if (mode == 2) return fireCt*100;
}


function sc_pl_fireCtMag(mode = 0) {
	var fireCtMag = (global.fireCtMag + sc_abScaleCalculator(9)) * sc_itemScaleCalculator(2, 4);
	
	if (mode == 1) return fireCtMag * sc_pl_fireDmg(1);
	
	//fireCtMag = (global.fireCtMag + sc_abScaleCalculator(9)) * sc_itemScaleCalculator(2, 4);
	if (mode == 0) return fireCtMag;
	
	fireCtMag -= global.fireCtMag;
	if (mode == 2) return fireCtMag * sc_pl_fireDmg(1);
	
}

function sc_pl_firePene(mode = 0){
	var atkPene = global.firePene;
	if (mode == 1) return atkPene;
	
	atkPene = global.firePene;
	if (mode == 0) return atkPene;
	
	atkPene -= global.firePene;
	if (mode == 2) return atkPene;
}


function sc_pl_fireShock(mode = 0){
	//기본 데미지 및 아이템 배율 적용
	var atkShock = global.fireShock;
	return atkShock;
}



