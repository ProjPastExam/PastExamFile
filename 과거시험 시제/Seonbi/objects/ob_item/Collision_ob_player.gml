/// @description Insert description here
// You can write your code in this editor
touch = true;


if (sc_getKey(global.btInter, global.gpInter, 0)) {
	if (isSell && global.money < costIndex) {
		uc_shake(4, 0.2);
	}
	else {
		if (sc_getItem()) {
			if (isChun) {
				with (ob_item_chun)		{ alarm[3] = 1; }
				with (ob_sk_chun)		{ alarm[3] = 1; }
				with (ob_coinReward)	{ alarm[3] = 1; }
				with (ob_hpReward)		{ alarm[3] = 1; }
			}
			if (isSell) {
				global.money -= costIndex;
				//with (ob_item_sell)		{ costIndex += 50; }
			}
			instance_destroy();
		}
	}
}
