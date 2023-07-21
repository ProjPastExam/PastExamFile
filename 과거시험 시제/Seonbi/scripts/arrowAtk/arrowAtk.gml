// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pl_arrowAtk(_dmgScale = 1, _mana = 1){
	var inst = 0;
	if (item7 && global.comCt <= 0) {
		inst = sc_pl_atkEf(sc_pl_atkDmg()*_dmgScale, sc_pl_atkPene(), sc_pl_atkShock(), sc_pl_atkMana()*_mana, 
			0, 0, 0, sp_pl_atkEf01, dir,,,,,10 + item7*5);
		SE_Play(s_pl_item7, global.vol);
	}
	else if (global.item11) {
		var fDmg = sc_pl_fireDmg() * (1+global.item11)/2;
		inst = sc_pl_atkEf(fDmg*_dmgScale, sc_pl_firePene(), sc_pl_fireShock(), sc_pl_fireMana()*_mana, 
			0, 11, 0, sp_pl_itemEf11_1, dir,,,,,,ob_atkEfItem11);
		SE_Play(s_item11_1, global.vol);
	}
	else {
		inst = sc_pl_atkEf(sc_pl_atkDmg()*_dmgScale, sc_pl_atkPene(), sc_pl_atkShock(), sc_pl_atkMana()*_mana, 
			0, 0, 0, sp_pl_atkEf01, dir);
		SE_Play(s_arrow01, global.vol);
	}
	
	return inst;
}

function sc_pl_arrowAtkB(_dmgScale = 1, _mana = 1){
	var inst = 0;
	if (item7 && global.comCt <= 0) {
		inst = sc_pl_atkEf(sc_pl_atkDmg()*_dmgScale, sc_pl_atkPene(), sc_pl_atkShock(), sc_pl_atkMana()*_mana, 
			0, 0, 0, sp_pl_atkEf01, dir,,,,,10 + item7*5);
		SE_Play(s_pl_item7, global.vol);
	}
	else if (global.item11) {
		var fDmg = sc_pl_fireDmg() * (1+global.item11)/2;
		inst = sc_pl_atkEf(fDmg*_dmgScale, sc_pl_firePene(), sc_pl_fireShock(), sc_pl_fireMana()*_mana, 
			0, 11, 0, sp_pl_itemEf11_1, dir,,,,,,ob_atkEfItem11);
		SE_Play(s_item11_1, global.vol);
	}
	else {
		inst = sc_pl_atkEf(sc_pl_atkDmg()*_dmgScale, sc_pl_atkPene(), sc_pl_atkShock(), sc_pl_atkMana()*_mana, 
			0, 0, 0, sp_pl_atkEf01, dir);
		SE_Play(s_arrow01, global.vol);
	}
	
	return inst;
}


function sc_pl_arrowAtk2(_dmgScale = 1, _mana = 1){
	var inst = 0;
	if (isSin) {
		inst = instance_create_layer(x, y, "effect", ob_sinEf01);
		inst.grade = isSin;
		inst.image_xscale = dir;
		inst.dir = dir;
		SE_Play(s_arrow02, global.vol);
		//global.comCt -= (20 - isSin*5);
	}
	else if (global.item11) {
		var fDmg = 2.5*sc_pl_fireDmg() * (1+global.item11)/2;
		inst = sc_pl_atkEf(fDmg*_dmgScale = 1, sc_pl_firePene(), sc_pl_fireShock()*1.2, sc_pl_fireMana()*_mana, 
			0, 11, 0, sp_pl_itemEf11_2, dir,,,,,,ob_atkEfItem11);
		SE_Play(s_item11_2, global.vol);
	}
	else {
		inst = sc_pl_atkEf(sc_pl_atkDmg()*2.5*_dmgScale = 1, sc_pl_atkPene(), sc_pl_atkShock()*1.2, sc_pl_atkMana()*_mana, 
			0, 0, 0, sp_pl_atkEf02, dir);
		SE_Play(s_arrow02, global.vol);
	}
	
	return inst;
}


function sc_pl_arrowAtkB2(_dmgScale = 1, _mana = 1){
	var inst = 0;
	if (isSin) {
		inst = instance_create_layer(x, y, "effect", ob_sinEf01);
		inst.grade = isSin;
		inst.image_xscale = dir;
		inst.dir = dir;
		inst.dAdd = 1.5;
		SE_Play(s_arrow02, global.vol);
		//global.comCt -= (20 - isSin*5);
	}
	else if (global.item11) {
		var fDmg = 4*sc_pl_fireDmg() * (1+global.item11)/2;
		sc_pl_atkEf(fDmg, sc_pl_firePene(), sc_pl_fireShock()*1.2, sc_pl_fireMana()*_mana, 
			0, 11, 0, sp_pl_itemEf11_2, dir,,,,,,ob_atkEfItem11);
		SE_Play(s_item11_2, global.vol);
	}
	else {
		sc_pl_atkEf(sc_pl_atkDmg()*4, sc_pl_atkPene(), sc_pl_atkShock()*1.2, sc_pl_atkMana()*_mana, 
		0, 0, 0, sp_pl_sk113Ef, dir);
		SE_Play(s_arrow02, global.vol);
	}
	
	return inst;
}