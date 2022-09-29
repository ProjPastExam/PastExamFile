/// @description Insert description here
// You can write your code in this editor

isCol = false;
var i = irandom_range(2, 4);
var j = global.hpMax - global.hp;

if (j < i) i = j;
healIndex = i;
costIndex = 150 + healIndex*50;