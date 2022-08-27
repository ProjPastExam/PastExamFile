/// @description Insert description here
// You can write your code in this editor
sin_t++;
if (sin_t > 300) sin_t = 0;

if (isNew) {
	xSpeed = image_xscale * 9;
	ySpeed = (15 - alarm[1]);

	x += xSpeed;
	y += ySpeed;

	xSpeed = 0;
	ySpeed = 0;
}

if (isDelete) {
	if (global.tabDeleteIs == 1) {
		switch (global.tabDeleteNum) {
		case 1:	global.sk1 = skNum;	break;
		case 2:	global.sk2 = skNum;	break;
		case 3:	global.sk3 = skNum; break;
		}
		//global.tabDeleteIs = 0;
		instance_destroy();
	}
	else {
		isDelete = false;
	}
}

alarm[0] = 1;
