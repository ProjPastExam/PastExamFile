// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_itemSprite(){
	itemSp = array_create(100, sp_skillUi_0);
	itemIn = array_create(100, sp_skillUi_0);
	
	for (var i = 0; i < 100; i++) {
		if (global.itemData[i] != NULL) {
			itemSp[i] = global.itemData[i].itemSprite;
			itemIn[i] = global.itemData[i].infoSprite;
		}
	}
	/*
{

itemSp[0] = sp_Item_sin;
itemSp[1] = sp_Item_kick;
itemSp[2] = sp_Item_02;
itemSp[3] = sp_Item_jump;
itemSp[4] = sp_Item_04;
itemSp[5] = sp_Item_05;
itemSp[6] = sp_Item_06;
}

{

itemIn[0] = sp_ItemInfo_sin;
itemIn[1] = sp_ItemInfo_kick;
itemIn[2] = sp_ItemInfo_02;
itemIn[3] = sp_ItemInfo_jump;
itemIn[4] = sp_ItemInfo_04;
itemIn[5] = sp_ItemInfo_05;
itemIn[6] = sp_ItemInfo_06;
}
*/

}

function sc_itemScaleSprite(_itemKind, _itemBuff) {
	if (_itemKind == 0) {
		if (_itemBuff == 0)			return sp_itemScale00;
		else if (_itemBuff == 1)	return sp_itemScale01;
		else if (_itemBuff == 2)	return sp_itemScale02;
		else if (_itemBuff == 3)	return sp_itemScale03;
		else if (_itemBuff == 4)	return sp_itemScale04;
	}
	else if (_itemKind == 1) {
		if (_itemBuff == 0)			return sp_itemScale10;
		else if (_itemBuff == 1)	return sp_itemScale11;
		else if (_itemBuff == 2)	return sp_itemScale12;
		else if (_itemBuff == 3)	return sp_itemScale13;
		else if (_itemBuff == 4)	return sp_itemScale14;
	}
	else if (_itemKind == 2) {
		if (_itemBuff == 0)			return sp_itemScale20;
		else if (_itemBuff == 1)	return sp_itemScale21;
		else if (_itemBuff == 2)	return sp_itemScale22;
		else if (_itemBuff == 3)	return sp_itemScale23;
		else if (_itemBuff == 4)	return sp_itemScale24;
	}
	
	return noone;
}