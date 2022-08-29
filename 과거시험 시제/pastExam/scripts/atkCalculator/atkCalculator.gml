// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkDmg(mode = 0){
	//기본 데미지 및 아이템 배율 적용
	var atkDmg = global.atkDmg;
	if (mode == 1) return atkDmg;
	
	atkDmg = global.atkDmg * sc_itemScaleCalculator(0, 0);
	if (mode == 0) return atkDmg;
	
	atkDmg -= global.atkDmg;
	if (mode == 2) return atkDmg;
}


function sc_pl_atkMana(mode = 0){
	var atkMana = global.atkMana;
	if (mode == 1) return atkMana;
	
	atkMana = global.atkMana * sc_itemScaleCalculator(0, 1);
	if (mode == 0) return atkMana;
	
	atkMana -= global.atkMana;
	if (mode == 2) return atkMana;
}

function sc_pl_atkComb(mode = 0) {
	var atkComb = global.atkComb * sc_itemScaleCalculator(0, 2);
	
	if (mode == 1) return string_format(atkComb, 0, 1);
	
	atkComb = global.atkComb * sc_itemScaleCalculator(0, 2);
	if (mode == 0) return atkComb;
	
	atkComb -= global.atkComb;
	if (mode == 2) return string_format(atkComb, 0, 1);
	
}

function sc_pl_atkCt(mode = 0) {
	var atkCt = global.atkCt * sc_itemScaleCalculator(0, 3);
	if (mode == 1) return atkCt*100;
	
	atkCt = global.atkCt * sc_itemScaleCalculator(0, 3);
	if (mode == 0) return atkCt;
	
	atkCt -= global.atkCt;
	if (mode == 2) return atkCt*100;
}


function sc_pl_atkCtMag(mode = 0) {
	var atkCtMag = global.atkCtMag;
	
	if (mode == 1) return atkCtMag * sc_pl_atkDmg(1);
	
	atkCtMag = global.atkCtMag * sc_itemScaleCalculator(0, 4);
	if (mode == 0) return atkCtMag * sc_pl_atkDmg(1);
	
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




