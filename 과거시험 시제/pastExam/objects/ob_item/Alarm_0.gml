/// @description Insert description here
// You can write your code in this editor
sin_t++;
if (sin_t > 300) sin_t = 0;

if (isNew) {
	xSpeed = image_xscale * 9;
	ySpeed = (15 - alarm[1]);
}
if (isNew) {
	x += xSpeed;
	y += ySpeed;

	xSpeed = 0;
	ySpeed = 0;
}

if (isDelete) {
	if (global.tabDeleteIs == 2) {
		global.itemGet[global.tabDeleteNum] = global.itemData[itemNum];
		global.itemGet[global.tabDeleteNum].itemBuff = itemBuff;
		global.itemGet[global.tabDeleteNum].itemKind = itemKind;
		global.itemGet[global.tabDeleteNum].itemGrade = itemGrade;
		
		with ( ob_player ) {
			itemCheck = true;
		}
		//global.tabDeleteIs = 0;
		instance_destroy();
	}
	else {
		isDelete = false;
	}
}

alarm[0] = 1;
