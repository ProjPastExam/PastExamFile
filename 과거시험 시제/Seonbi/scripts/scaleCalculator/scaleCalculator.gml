// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_itemScaleCalculator(itemKind, itemBuff){
	var tempIndex = global.itemScale[itemKind][itemBuff];
	if (tempIndex == 0)			return 0;
	else if (tempIndex == 1)	return 4;
	else if (tempIndex == 2)	return 7;
	else if (tempIndex == 3)	return 10;
	else if (tempIndex == 4)	return 12;
	else if (tempIndex == 5)	return 14;
	else if (tempIndex == 6)	return 16;
	else return tempIndex + 10;
}

function sc_abScaleCalculator(abIndex) {
	switch (abIndex) {
	case 1:		return 1	* (global.seonBuff[0] + global.abIndex[0]);		break;
	case 2:		return 3	* (global.seonBuff[1] + global.abIndex[1]);		break;
	case 3:		return 0.1	* (global.seonBuff[2]);							break;
	case 4:		return 0.03	* (global.seonBuff[3] + global.abIndex[2]);		break;
																			
	case 5:		return 1	* (global.seonBuff[4] + global.abIndex[3]);		break;
	case 6:		return 3	* (global.seonBuff[5] + global.abIndex[4]);		break;
	case 7:		return 0.1	* (global.seonBuff[6] + global.abIndex[5]);		break;
	case 8:		return 0.03	* (global.seonBuff[7]);							break;
																			
	case 9:		return 1	* (global.seonBuff[8] + global.abIndex[6]);		break;
	case 10:	return 3	* (global.seonBuff[9]);							break;
	case 11:	return 0.1	* (global.seonBuff[10] + global.abIndex[7]);	break;
	case 12:	return 0.03	* (global.seonBuff[11] + global.abIndex[8]);	break;
	}
}