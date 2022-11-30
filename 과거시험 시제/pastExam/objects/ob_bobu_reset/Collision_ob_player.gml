/// @description Insert description here
// You can write your code in this editor


isCol = true;

if (sc_getKey(global.btInter, global.gpInter, 0)) {
	if (global.money < costIndex) {
		uc_shake(4, 0.2);
	}
	else {
		global.money -= costIndex;
		costIndex += 50;
		with (ob_item_sell) { instance_destroy(); }
		with (ob_sk_sell)	{ instance_destroy(); }
		alarm[1] = 1;
	}
}