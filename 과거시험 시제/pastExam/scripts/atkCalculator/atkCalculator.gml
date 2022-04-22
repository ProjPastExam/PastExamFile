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
	
	return atkMana;
}


function sc_pl_atkPene(mode = 0){
	var atkPene = global.atkPene;
	
	
	return atkPene;
}


function sc_pl_atkShock(mode = 0){
	//기본 데미지 및 아이템 배율 적용
	var atkShock = global.atkShock;

	
	
	return atkShock;
}


function sc_pl_atkCt(mode = 0) {
	var atkCt = global.atkCt + global.comCt/2;
	
	return atkCt;
}
