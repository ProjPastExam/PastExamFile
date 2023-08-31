var i = irandom_range(0 ,2);

if (i == 0)			nextRoom = r_stage02_1_1;
else if (i == 1)	nextRoom = r_stage02_1_2;
else				nextRoom = r_stage02_1_3;

global.hp = global.hpMax;