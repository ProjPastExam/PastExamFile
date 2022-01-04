// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function itemStruct(_itemNum, _itemSprite, _infoSprite, _itemKind, _itemFunc) constructor{
	itemNum		= _itemNum;
	itemSprite	= _itemSprite;
	infoSprite	= _infoSprite;
	itemKind	= _itemKind;
	itemFunc	= _itemFunc;
}

function sc_itemCheck(index) {
	for (var i = 0; i = global.itemSum; i++) {
		if (global.itemGet[i] == NULL) return true;
		if (global.itemGet[i].itemNum == index) return false;
	}
	return true;
}