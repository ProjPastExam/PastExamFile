// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_itemScaleCalculator(itemKind, itemBuff){
	var tempIndex = global.itemScale[itemKind][itemBuff];
	
	if (tempIndex >= 6) return 2;
	else if (tempIndex == 5) return 1.9;
	else if (tempIndex == 4) return 1.7;
	else if (tempIndex == 3) return 1.45;
	else if (tempIndex == 2) return 1.25;
	else if (tempIndex == 1) return 1.1;
	else return 1;
}

function sc_abScaleCalculator(abIndex) {
	switch (abIndex) {
	case 1:	return 2	* global.abAtkDmg;		break;
	case 2:	return 3	* global.abAtkMana;		break;
	case 3:	return 1	* global.abAtkCtDmg;	break;
	
	case 4:	return 2	* global.abKickDmg;		break;
	case 5:	return 0.2	* global.abKickComb;	break;
	case 6:	return 3	* global.abKickCt;		break;
	
	case 7:	return 2	* global.abFireDmg;		break;
	case 8:	return 3	* global.abFireCt;		break;
	case 9:	return 1	* global.abFireCtDmg;	break;
	}
}