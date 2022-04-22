// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_kickDmg(mode = 0){
	var kickDmg = global.kickDmg;
	if (mode == 1) return kickDmg;
	
	kickDmg = global.kickDmg * global.kickDmgScale;
	if (mode == 0) return kickDmg;
	
	kickDmg -= global.kickDmg;
	if (mode == 2) return kickDmg;
}


function sc_pl_kickMana(mode = 0){
	var atkMana = global.kickMana;
	
	return atkMana;
}


function sc_pl_kickPene(mode = 0){
	var atkPene = global.kickPene;
	
	
	return atkPene;
}


function sc_pl_kickShock(mode = 0){
	//기본 데미지 및 아이템 배율 적용
	var atkShock = global.kickShock;

	
	
	return atkShock;
}


function sc_pl_kickCt(mode = 0) {
	var kickCt = global.kickCt + global.comCt/2;
	
	return kickCt;
}
