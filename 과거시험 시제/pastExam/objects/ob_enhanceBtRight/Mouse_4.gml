/// @description Insert description here
// You can write your code in this editor


if (isActive) {
	if (global.abIndex[sIndex-1] < 10 && global.abPoint > 0) {
		global.abPoint--;
		global.abIndex[sIndex-1]++; 
	}
	
	switch (sIndex-1) {
	case 1:	VSLS_SetAndSave("abAtkDmg", global.abIndex[sIndex-1], "saveFile");		break;
	case 2:	VSLS_SetAndSave("abAtkMana", global.abIndex[sIndex-1], "saveFile");		break;
	case 3:	VSLS_SetAndSave("abAtkCtDmg", global.abIndex[sIndex-1], "saveFile");	break;
	
	case 4:	VSLS_SetAndSave("abKickDmg", global.abIndex[sIndex-1], "saveFile");		break;
	case 5:	VSLS_SetAndSave("abKickComb", global.abIndex[sIndex-1], "saveFile");	break;
	case 6:	VSLS_SetAndSave("abKickCt", global.abIndex[sIndex-1], "saveFile");		break;
	
	case 7:	VSLS_SetAndSave("abFireDmg", global.abIndex[sIndex-1], "saveFile");		break;
	case 8:	VSLS_SetAndSave("abFireCt", global.abIndex[sIndex-1], "saveFile");		break;
	case 9:	VSLS_SetAndSave("abFireCtDmg", global.abIndex[sIndex-1], "saveFile");	break;
	}
}