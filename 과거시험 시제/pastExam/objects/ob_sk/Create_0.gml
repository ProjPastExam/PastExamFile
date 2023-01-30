/// @description Insert description here
// You can write your code in this editor
alarm[1] = 30;
xSpeed = 0;
ySpeed = 0;
isDelete = false;
costIndex = irandom_range(120, 180);

sc_skillUi();
sprite_index = skUi[skNum];

if (isRand) {
	sc_skSpawn(ob_roomControl.stage);
}
if (global.sk1 == skNum) instance_destroy();
if (global.sk2 == skNum) instance_destroy();
if (global.sk3 == skNum) instance_destroy();
alarm[2] = 30;


//alarm[5] = 10;
alarm[0] = 1;