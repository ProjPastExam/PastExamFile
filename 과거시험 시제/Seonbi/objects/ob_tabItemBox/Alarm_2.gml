/// @description Insert description here
// You can write your code in this editor
if (global.itemGet[itemNum] != NULL) {
	itemValue	= global.itemGet[itemNum].itemNum;
	itemSprite	= global.itemGet[itemNum].itemSprite;
	itemInfo	= global.itemGet[itemNum].infoSprite;
	itemKind	= global.itemGet[itemNum].itemKind;
	itemGrade	= global.itemGet[itemNum].itemGrade;
	backSprite	= sp_skillUi_0;
	if (itemKind == 0) backSprite = sp_itemBackAtk;
	if (itemKind == 1) backSprite = sp_itemBackKick;
	if (itemKind == 2) backSprite = sp_itemBackFire;
	if (itemKind == 3) backSprite = sp_itemBackNormal;
}
else {
	itemValue	= -1;
	itemSprite	= NULL;
	itemInfo	= NULL;
	backSprite	= sp_skillUi_0;
}

if (global.itemNum <= itemNum) {
	image_index = 1;
}