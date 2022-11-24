/// @description 아이템 및 기술 중복 시 버린 아이템 생성 코드
// You can write your code in this editor

if (global.tabDeleteIs == 1) {
	with (instance_create_depth(x, y, 0, ob_sk)) {
		isRand = false;
		//isNew = true;
		skNum = global.tabDeleteIndex;
	}
}

if (global.tabDeleteIs == 2) {
	with (instance_create_depth(x, y, 0, ob_item)) {
		isRand = false;
		itemNum = global.tabDeleteIndex;
		//isNew = true;
		itemSprite	= global.itemData[itemNum].itemSprite;
		infoSprite	= global.itemData[itemNum].infoSprite;
		backSprite	= sp_skillUi_0;
		itemKind	= global.tabDeleteIndex2;
		itemBuff	= global.tabDeleteIndex3;
		itemGrade	= global.tabDeleteIndex4;
		
		//if (itemKind == 3) itemKind = irandom_range(0, 2);
		
		if (itemKind == 0) backSprite = sp_itemBackAtk;
		if (itemKind == 1) backSprite = sp_itemBackKick;
		if (itemKind == 2) backSprite = sp_itemBackFire;
		if (itemKind == 3) backSprite = sp_itemBackNormal;
	}
}

global.tabDeleteIs = 0
global.tabDeleteIndex = 0;
