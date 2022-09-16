/// @description Insert description here
// You can write your code in this editor


if (sIndex == enhanceNum && interIndex) {
	if (keyboard_check_pressed(global.btLeft)) {
		if (global.abIndex[enhanceNum-1] > 0 && global.abPointMax > global.abPoint) {
			global.abPoint++;
			global.abIndex[enhanceNum-1]--; 
		}
	}
	if (keyboard_check_pressed(global.btRight)) {
		if (global.abIndex[enhanceNum-1] < 10 && global.abPoint > 0) {
			global.abPoint--;
			global.abIndex[enhanceNum-1]++; 
		}
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