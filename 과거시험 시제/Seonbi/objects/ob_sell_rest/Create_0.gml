/// @description Insert description here
// You can write your code in this editor

isCol = false;
var i = irandom_range(2, 4);
var j = global.hpMax - global.hp;

if (j < i) i = j-1;
if (i == -1) instance_destroy();
healIndex = i;
costIndex = 50 + healIndex*20;