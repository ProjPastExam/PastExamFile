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