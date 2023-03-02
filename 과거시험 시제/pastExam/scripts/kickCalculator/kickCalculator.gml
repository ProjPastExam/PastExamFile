// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_kickDmg(mode = 0){
	//기본 데미지 및 아이템 배율 적용
	var dmg = global.kickDmg + sc_abScaleCalculator(4);
	if (global.ranStage2 == 2) dmg += dmg/2;
	if (mode == 1) return dmg;
	
	var dmgItem = sc_itemScaleCalculator(1, 0);
	if (mode == 2) return dmgItem;
	
	if (mode == 0) return dmg + dmgItem;
}


function sc_pl_kickMana(mode = 0){
	var mana = global.kickMana + sc_abScaleCalculator(5);
	if (mode == 1) return mana;
	
	var manaItem = sc_itemScaleCalculator(1, 1)*3;
	if (mode == 2) return manaItem;
	
	if (mode == 0) return mana + manaItem;
}

function sc_pl_kickComb(mode = 0) {
	var comb = global.kickComb + sc_abScaleCalculator(6);
	if (mode == 1) return comb*100;
	
	var combItem = sc_itemScaleCalculator(1, 2)/10;
	if (mode == 2) return string_format(combItem, 0, 1);
	
	if (mode == 0) return comb + combItem;
	
}

function sc_pl_kickCt(mode = 0) {
	var ct = global.kickCt;
	if (global.ranStage2 == 3) ct += 0.50;
	var ctAdd = ct;
	if (global.item10)	{ ctAdd += (global.item10) * ct * 0.5; }
	if (global.item66)	{ ctAdd += (global.item66) * ct * 0.5 * global.comCt/100; }
	ct = ctAdd;
	if (mode == 1) return ct*100;
	
	var ctItem = sc_itemScaleCalculator(1, 3)/100;
	if (mode == 2) return ctItem*100;
	
	ct = global.kickCt;
	if (global.ranStage2 == 3) ct += 0.50;
	if (mode == 0) return ct;
}

function sc_pl_kickCtMag(mode = 0) {
	var kickCtMag = global.kickCtMag * sc_itemScaleCalculator(1, 4);
	
	if (mode == 1) return kickCtMag * sc_pl_kickDmg(1);
	
	//kickCtMag = global.kickCtMag * sc_itemScaleCalculator(1, 4);
	if (mode == 0) return kickCtMag;
	
	kickCtMag -= global.kickCtMag;
	if (mode == 2) return kickCtMag * sc_pl_kickDmg(1);
	
}


function sc_pl_kickPene(mode = 0){
	var atkPene = global.kickPene;
	if (mode == 1) return atkPene;
	
	atkPene = global.kickPene;
	if (mode == 0) return atkPene;
	
	atkPene -= global.kickPene;
	if (mode == 2) return atkPene;
}


function sc_pl_kickShock(mode = 0){
	//기본 데미지 및 아이템 배율 적용
	var atkShock = global.kickShock;
	if (mode == 1) return atkShock;
	
	atkShock = global.kickShock;
	if (mode == 0) return atkShock;
	
	atkShock -= global.kickShock;
	if (mode == 2) return atkShock;
}



