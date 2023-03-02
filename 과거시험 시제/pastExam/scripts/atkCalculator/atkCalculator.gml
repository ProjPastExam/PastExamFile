// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkDmg(mode = 0){
	//기본 데미지 및 아이템 배율 적용
	var dmg = global.atkDmg + sc_abScaleCalculator(1);
	if (global.ranStage2 == 2) dmg += dmg/2;
	if (mode == 1) return dmg;
	
	var dmgItem = sc_itemScaleCalculator(0, 0);
	if (mode == 2) return dmgItem;
	
	if (mode == 0) return dmg + dmgItem;
}


function sc_pl_atkMana(mode = 0){
	var mana = global.atkMana + sc_abScaleCalculator(2);
	if (mode == 1) return mana;
	
	var manaItem = sc_itemScaleCalculator(0, 1)*3;
	if (mode == 2) return manaItem;
	
	if (mode == 0) return mana + manaItem;
}

function sc_pl_atkComb(mode = 0) {
	var comb = global.atkComb;
	if (mode == 1) return comb*100;
	
	var combItem = sc_itemScaleCalculator(0, 2)/5;
	if (mode == 2) return string_format(combItem, 0, 1);
	
	if (mode == 0) return comb + combItem;
	
}

function sc_pl_atkCt(mode = 0) {
	var ct = global.atkCt + sc_abScaleCalculator(3);
	if (global.ranStage2 == 3) ct += 0.50;
	if (global.item10)	{ ct += (1 + global.item10) * ct * 0.25; }
	if (mode == 1) return ct*100;
	
	var ctItem = sc_itemScaleCalculator(0, 3)/20;
	if (mode == 2) return ctItem*100;
	
	ct = global.atkCt + sc_abScaleCalculator(3);
	if (global.ranStage2 == 3) ct += 0.50;
	if (mode == 0) return ct;
}


function sc_pl_atkCtMag(mode = 0) {
	var atkCtMag = global.atkCtMag;
	
	if (mode == 1) return atkCtMag * sc_pl_atkDmg(1);
	
	atkCtMag = (global.atkCtMag + sc_abScaleCalculator(3)) * sc_itemScaleCalculator(0, 4);
	if (mode == 0) return atkCtMag;
	
	atkCtMag -= global.atkCtMag;
	if (mode == 2) return atkCtMag * sc_pl_atkDmg(1);
	
}

function sc_pl_atkPene(mode = 0){
	var atkPene = global.atkPene;
	if (mode == 1) return atkPene;
	
	atkPene = global.atkPene;
	if (mode == 0) return atkPene;
	
	atkPene -= global.atkPene;
	if (mode == 2) return atkPene;
}


function sc_pl_atkShock(mode = 0){
	//기본 데미지 및 아이템 배율 적용
	var atkShock = global.atkShock;
	if (mode == 1) return atkShock;
	
	atkShock = global.atkShock;
	if (mode == 0) return atkShock;
	
	atkShock -= global.atkShock;
	if (mode == 2) return atkShock;
}




