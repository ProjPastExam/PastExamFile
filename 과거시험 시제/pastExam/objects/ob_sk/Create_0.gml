/// @description Insert description here
// You can write your code in this editor
alarm[1] = 30;
xSpeed = 0;
ySpeed = 0;
isDelete = false;

sc_skillUi();
sprite_index = skUi[skNum];

if (isRand) {
	var i = 0;
	while (1) {
		skNum = irandom_range(101, 107);
		var check = true;
		if (global.sk1 == skNum) check = false;
		if (global.sk2 == skNum) check = false;
		if (global.sk3 == skNum) check = false;
		if (check) break;
		i++;
		if (i > 60) break;
	}
}
if (global.sk1 == skNum) instance_destroy();
if (global.sk2 == skNum) instance_destroy();
if (global.sk3 == skNum) instance_destroy();
alarm[2] = 30;


//alarm[5] = 10;
alarm[0] = 1;