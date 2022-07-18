// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkDmg(mode = 0){
	//기본 데미지 및 아이템 배율 적용
	var atkDmg = global.atkDmg;
	if (mode == 1) return atkDmg;
	
	atkDmg = global.atkDmg * global.atkDmgScale;
	if (mode == 0) return atkDmg;
	
	atkDmg -= global.atkDmg;
	if (mode == 2) return atkDmg;
}


function sc_pl_atkMana(mode = 0){
	var atkMana = global.atkMana;
	if (mode == 1) return atkMana;
	
	atkMana = global.atkMana;
	if (mode == 0) return atkMana;
	
	atkMana -= global.atkMana;
	if (mode == 2) return atkMana;
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


function sc_pl_atkCt(mode = 0) {
	var atkCt = global.atkCt;
	if (mode == 1) return atkCt;
	
	atkCt = global.atkCt + global.comCt/2;
	if (mode == 0) return atkCt;
	
	atkCt -= global.atkCt;
	if (mode == 2) return atkCt;
}


function sc_pl_atkCtMag(mode = 0) {
	var atkCtMag = global.atkCtMag;
	
	if (mode == 1) return atkCtMag * 100;
	
	atkCtMag = global.atkCtMag;
	if (mode == 0) return atkCtMag;
	
	atkCtMag -= global.atkCtMag;
	if (mode == 2) return atkCtMag * 100;
	
}


function sc_pl_atkComb(mode = 0) {
	var atkComb = global.atkComb;
	
	if (mode == 1) return atkComb;
	
	atkComb = global.atkComb;
	if (mode == 0) return atkComb;
	
	atkComb -= global.atkComb;
	if (mode == 2) return atkComb;
	
}
