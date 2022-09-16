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
	case 1:	return 1	* global.abIndex[0];	break;
	case 2:	return 3	* global.abIndex[1];	break;
	case 3:	return 2	* global.abIndex[2];	break;
	
	case 4:	return 1	* global.abIndex[3];	break;
	case 5:	return 0.2	* global.abIndex[4];	break;
	case 6:	return 3	* global.abIndex[5];	break;
	
	case 7:	return 1	* global.abIndex[6];	break;
	case 8:	return 3	* global.abIndex[7];	break;
	case 9:	return 2	* global.abIndex[8];	break;
	}
}