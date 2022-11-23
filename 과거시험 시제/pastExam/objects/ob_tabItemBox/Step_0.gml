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
	if (global.itemGet[itemNum] != NULL) {
		ob_tabSelectImage.itemGrade = itemGrade;
		ob_tabSkInfo.image_index = 3*global.lan + itemGrade;
	}
}