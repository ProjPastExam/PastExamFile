/// @description Insert description here
// You can write your code in this editor
pace = 0;
isActive = false;

mobStack = array_create(paceMax);
mobNum = array_create(paceMax);

for (var i = 0; i < paceMax; i++) {
	mobStack[i] = array_create(mobNum[i]);
}

alarm[0] = 1;