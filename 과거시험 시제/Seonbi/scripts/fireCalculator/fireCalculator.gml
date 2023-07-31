// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_fireDmg(mode = 0){
	//기본 데미지 및 아이템 배율 적용
	var dmg = global.fireDmg + sc_abScaleCalculator(9);
	if (global.ranStage2 == 2) dmg += dmg/2;
	if (mode == 1) return dmg;
	
	var dmgItem = sc_itemScaleCalculator(2, 0);
	if (mode == 2) return dmgItem;
	
	if (mode == 0) return dmg + dmgItem;
}


function sc_pl_fireMana(mode = 0){
	var mana = global.fireMana + sc_abScaleCalculator(10);
	if (mode == 1) return mana;
	
	var manaItem = sc_itemScaleCalculator(2, 1)*3;
	if (mode == 2) return manaItem;
	
	if (mode == 0) return mana + manaItem;
}

function sc_pl_fireComb(mode = 0) {
	var comb = global.fireComb + sc_abScaleCalculator(11);
	if (mode == 1) return comb*100;
	
	var combItem = sc_itemScaleCalculator(2, 2)/10;
	if (mode == 2) return string_format(combItem, 0, 1);
	
	if (mode == 0) return comb + combItem;
	
}

function sc_pl_fireCt(mode = 0) {
	var ct = global.fireCt + sc_abScaleCalculator(12);
	if (global.ranStage2 == 3) ct += 0.50;
	var ctAdd = ct;
	if (global.item10)	{ ctAdd += (global.item10) * ct * 0.5; }
	if (global.item66)	{ ctAdd += (global.item66) * ct * 0.5 * global.comCt/100; }
	ct = ctAdd;
	if (mode == 1) return ct*100;
	
	var ctItem = sc_itemScaleCalculator(2, 3)/100;
	if (mode == 2) return ctItem*100;
	
	ct = global.fireCt + sc_abScaleCalculator(12);
	if (global.ranStage2 == 3) ct += 0.50;
	if (mode == 0) return ct;
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



