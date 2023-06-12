/// @description Insert description here
// You can write your code in this editor

touch = false;
sin_t = 0;
isDelete = false;

levelIndex = 0;
with (ob_roomControl) { other.levelIndex = stage; }

coinIndex = irandom_range(20*levelIndex+40, 20*levelIndex + 60);

alarm[2] = 30;
alarm[0] = 1;