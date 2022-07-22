// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_kickDmg(mode = 0){
	var kickDmg = global.kickDmg;
	if (mode == 1) return kickDmg;
	
	kickDmg = global.kickDmg * sc_itemScaleCalculator(1, 0);
	if (mode == 0) return kickDmg;
	
	kickDmg -= global.kickDmg;
	if (mode == 2) return kickDmg;
}


function sc_pl_kickMana(mode = 0){
	var atkMana = global.kickMana;
	if (mode == 1) return atkMana;
	
	atkMana = global.kickMana * sc_itemScaleCalculator(1, 1);
	if (mode == 0) return atkMana;
	
	atkMana -= global.kickMana;
	if (mode == 2) return atkMana;
}

function sc_pl_kickComb(mode = 0) {
	var kickComb = global.kickComb;
	
	if (mode == 1) return string_format(kickComb, 0, 1);
	
	kickComb = global.kickComb * sc_itemScaleCalculator(1, 2);
	if (mode == 0) return kickComb;
	
	kickComb -= global.kickComb;
	if (mode == 2) return string_format(kickComb, 0, 1);
	
}

function sc_pl_kickCt(mode = 0) {
	var kickCt = global.kickCt;
	if (mode == 1) return kickCt * 100;
	
	kickCt = global.kickCt * sc_itemScaleCalculator(1, 3);
	if (mode == 0) return kickCt;
	
	kickCt -= global.kickCt;
	if (mode == 2) return kickCt * 100;
}

function sc_pl_kickCtMag(mode = 0) {
	var kickCtMag = global.kickCtMag;
	
	if (mode == 1) return kickCtMag * sc_pl_kickDmg(1);
	
	kickCtMag = global.kickCtMag * sc_itemScaleCalculator(1, 4);
	if (mode == 0) return kickCtMag * sc_pl_kickDmg(1);
	
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



