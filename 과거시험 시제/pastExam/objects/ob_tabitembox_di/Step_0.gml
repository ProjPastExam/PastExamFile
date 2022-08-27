/// @description Insert description here
// You can write your code in this editor
if (isBreak) {
	if (tabIndex == itemNum+3 && global.itemGet[itemNum] != NULL) {
		global.itemGet[itemNum] = NULL;
		global.itemSum--;
		sc_itemSort();
	}
	alarm[2] = 1;
	isBreak = false;
}

if (tabIndex == (itemNum+3)) {
	ob_tabSkInfo.sprite_index = itemInfo;
	ob_tabSelectImage.sprite_index = itemSprite;
	ob_tabSelectImage.backImage = backSprite;
	
	if (active) {
		global.tabDeleteIndex	= itemValue;
		global.tabDeleteIndex2	= itemKind;
		global.tabDeleteIndex3	= itemBuff;
		global.tabDeleteIndex4	= itemGrade;
		global.tabDeleteIs = 2;
		global.tabDeleteNum = itemNum;
		
		global.itemGet[itemNum] = NULL;
		
		room_goto(global.roomBuffer);
	}
}