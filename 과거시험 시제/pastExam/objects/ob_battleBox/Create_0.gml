/// @description Insert description here
// You can write your code in this editor
pace = 0;
paceMax = 1;
isActive = false;
isTerm = false;
isTemp = false;

isPace = true;

mobStack = array_create(paceMax, -1);
mobNum = array_create(paceMax, -1);

for (var i = 0; i < paceMax; i++) {
	mobStack[i] = array_create(mobNum[i], -1);
}

alarm[0] = 1;
alarm[2] = term;
alarm[4] = 30;