// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_itemScaleCalculator(itemKind, itemBuff){
	var tempIndex = global.itemScale[itemKind][itemBuff];
	
	if (tempIndex > 6) return (6 + tempIndex);
	else return tempIndex * 2;
}

function sc_abScaleCalculator(abIndex) {
	switch (abIndex) {
	case 1:	return 1	* global.abIndex[0];	break;
	case 2:	return 3	* global.abIndex[1];	break;
	case 3:	return 0.03	* global.abIndex[2];	break;
	
	case 4:	return 1	* global.abIndex[3];	break;
	case 5:	return 3	* global.abIndex[4];	break;
	case 6:	return 0.2	* global.abIndex[5];	break;
	
	case 7:	return 1	* global.abIndex[6];	break;
	case 8:	return 0.2	* global.abIndex[7];	break;
	case 9:	return 0.03	* global.abIndex[8];	break;
	}
}