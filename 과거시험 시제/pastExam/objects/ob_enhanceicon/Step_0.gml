/// @description Insert description here
// You can write your code in this editor


if (sIndex == enhanceNum && interIndex) {
	if (sc_getKey(global.btLeft, gp_padl, 0)) {
		if (global.abIndex[enhanceNum-1] > 0 && global.abPointMax > global.abPoint) {
			global.abPoint++;
			global.abIndex[enhanceNum-1]--; 
		}
	}
	if (sc_getKey(global.btRight, gp_padr, 0)) {
		if (global.abIndex[enhanceNum-1] < 10 && global.abPoint > 0) {
			global.abPoint--;
			global.abIndex[enhanceNum-1]++; 
		}
	}
	
	if (sc_getKey(global.btSk2, gp_shoulderl, 0)) {
		global.abPoint += global.abIndex[enhanceNum-1];
		global.abIndex[enhanceNum-1] = 0;
	}
	if (sc_getKey(global.btSk3, gp_shoulderr, 0)) {
		var index = 10 - global.abIndex[enhanceNum-1];
		if (index > global.abPoint) index = global.abPoint;
		
		global.abPoint -= index;
		global.abIndex[enhanceNum-1] += index;
	}
	
	switch (enhanceNum) {
	case 1:	VSLS_SetAndSave("abAtkDmg", global.abIndex[enhanceNum-1], "saveFile");		break;
	case 2:	VSLS_SetAndSave("abAtkMana", global.abIndex[enhanceNum-1], "saveFile");		break;
	case 3:	VSLS_SetAndSave("abAtkCtDmg", global.abIndex[enhanceNum-1], "saveFile");	break;
	
	case 4:	VSLS_SetAndSave("abKickDmg", global.abIndex[enhanceNum-1], "saveFile");		break;
	case 5:	VSLS_SetAndSave("abKickComb", global.abIndex[enhanceNum-1], "saveFile");	break;
	case 6:	VSLS_SetAndSave("abKickCt", global.abIndex[enhanceNum-1], "saveFile");		break;
	
	case 7:	VSLS_SetAndSave("abFireDmg", global.abIndex[enhanceNum-1], "saveFile");		break;
	case 8:	VSLS_SetAndSave("abFireCt", global.abIndex[enhanceNum-1], "saveFile");		break;
	case 9:	VSLS_SetAndSave("abFireCtDmg", global.abIndex[enhanceNum-1], "saveFile");	break;
	}
}