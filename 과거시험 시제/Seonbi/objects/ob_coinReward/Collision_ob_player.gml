/// @description Insert description here
// You can write your code in this editor

touch = true;

if (sc_getKey(global.btInter, global.gpInter, 0)) {
	global.money += coinIndex;
	
	with (ob_item_chun)		{ alarm[3] = 1; }
	with (ob_sk_chun)		{ alarm[3] = 1; }
	with (ob_coinReward)	{ alarm[3] = 1; }
	with (ob_hpReward)		{ alarm[3] = 1; }

	instance_destroy();

}
