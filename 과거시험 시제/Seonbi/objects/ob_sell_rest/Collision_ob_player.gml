/// @description Insert description here
// You can write your code in this editor


isCol = true;

if (sc_getKey(global.btInter, global.gpInter, 0)) {
	if (global.money >= costIndex) {
		global.money -= costIndex;
		SE_Play(s_cloth1, global.vol);
		global.checkPoint	= room;
		global.checkUse		= 1;
		
		instance_destroy();
	}
	else
	{
		uc_shake(4, 0.2);
	}
}