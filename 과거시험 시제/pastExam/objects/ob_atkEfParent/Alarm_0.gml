/// @description Insert description here
// You can write your code in this editor


//if ( image_index > 6 ) instance_destroy();
alarm[0] = 1;

if (isHit && isCritic) {
	isCritic = false;
	if (global.comCt < 100) global.comCt += 2;
	global.comCtAlarm = 60;
}
