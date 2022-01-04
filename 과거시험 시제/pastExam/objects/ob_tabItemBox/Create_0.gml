/// @description Insert description here
// You can write your code in this editor

if (global.itemGet[itemNum] != NULL) {
	itemValue	= global.itemGet[itemNum].itemNum;
	itemSprite	= global.itemGet[itemNum].itemSprite;
	backSprite	= sp_skillUi_0;
}
else {
	itemValue	= -1;
	itemSprite	= NULL;
	backSprite	= sp_skillUi_0;
}

if (global.itemNum <= itemNum) {
	image_index = 1;
}