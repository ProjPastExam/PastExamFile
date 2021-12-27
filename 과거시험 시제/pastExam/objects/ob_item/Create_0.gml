/// @description Insert description here
// You can write your code in this editor
alarm[1] = 30;
xSpeed = 0;
ySpeed = 0;
touch = false;
sin_t = 0;

if (isRand) {
	itemNum = irandom_range(0, global.itemMax);
}

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
	itemStat[num] = sc_itemSetStat(40, statRevise);
}


//sc_itemSprite();
sprite_index = global.itemData[itemNum].itemSprite;
infoSprite	= global.itemData[itemNum].itemInfo;


//alarm[5] = 10;
alarm[0] = 1;