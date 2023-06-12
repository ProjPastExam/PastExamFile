// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function itemStruct(_itemNum, _itemSprite, _infoSprite, _itemKind, _itemFunc) constructor{
	itemNum		= _itemNum;
	itemSprite	= _itemSprite;
	infoSprite	= _infoSprite;
	itemKind	= _itemKind;
	itemGrade	= 1;
	itemFunc	= _itemFunc;
	itemBuff	= 0;
}

function sc_itemCheck(index) {
	for (var i = 0; i < global.itemNum; i++) {
		if (global.itemGet[i] == NULL) return true;
		if (global.itemGet[i].itemNum == index) return false;
	}
	return true;
}

function sc_itemSort() {
	for (var i = 0; i < global.itemNum-1; i++) {
		if (global.itemGet[i] == NULL) {
			for (var j = i+1; j < global.itemNum; j++) {
				if (global.itemGet[j] != NULL) {
					global.itemGet[i] = global.itemGet[j];
					global.itemGet[j] = NULL;
					break;
				}
			}
		}
	}
}