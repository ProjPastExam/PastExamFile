/// @description Insert description here
// You can write your code in this editor
alarm[1] = 30;
xSpeed = 0;
ySpeed = 0;
touch = false;
sin_t = 0;
alarm[2] = 30;
isDelete = false;

if (isRand) {
	var i = 0;
	while (1) {
		itemNum = irandom_range(0, global.itemMax-1);
		if (sc_itemCheck(itemNum)) { break; }
		i++;
		if (i > 60) break;
	}
	itemBuff = irandom_range(0, 4);
}
if (!sc_itemCheck(itemNum)) instance_destroy();
/*
itemStat = array_create(4, 0);
statNum = 0;
statRevise = ob_roomControl.itemRevise;


var num;
var p;

randomize();
num = irandom_range(0, 10);
if (num < 7) {
	statNum = 1;
}
else if (num < 10) {
	statNum = 2;
	statRevise = statRevise * 0.75;
}
else {
	statNum = 3;
	statRevise = statRevise * 0.65;
}



for (p = 0; p < statNum; p++) {
	while (1) {
		num = irandom_range(0, 3);
		if (itemStat[num] == 0) break;
	}
	if (num == 0) itemStat[num] = sc_itemSetStat(50, statRevise);
	else if (num == 1) itemStat[num] = sc_itemSetStat(10, statRevise);
	else if (num == 2) itemStat[num] = sc_itemSetStat(25, statRevise);
	else if (num == 3) itemStat[num] = sc_itemSetStat(50, statRevise);
}
*/

//sc_itemSprite();
itemSprite	= global.itemData[itemNum].itemSprite;
infoSprite	= global.itemData[itemNum].infoSprite;
backSprite	= sp_skillUi_0;
itemKind	= global.itemData[itemNum].itemKind;
itemGrade	= global.itemData[itemNum].itemGrade;

if (itemKind == 3) itemKind = irandom_range(0, 2);

if (itemKind == 0) backSprite = sp_itemBackAtk;
if (itemKind == 1) backSprite = sp_itemBackKick;
if (itemKind == 2) backSprite = sp_itemBackFire;



//alarm[5] = 10;
alarm[0] = 1;