/// @description Insert description here
// You can write your code in this editor
with (ob_roomControl) {
	other.mobNum = mobNum;
}
if (isCollision && !isActive && mobNum <= 0) {
	var sY = bbox_bottom - 192;
	isActive = true;
	SE_Play(s_chun_reward, global.vol);
	if (global.hp < 9)	{ 
		var rcvHp = 2-global.level;
		if (global.clearStage >= 15) rcvHp++;
		global.hp += rcvHp;
		if (global.hp > 9) global.hp = 9;
		if (rcvHp > 0) instance_create_layer(0, 0, "effect", ob_healEf);	
	}
	var hpIndex = global.hpMax - global.hp;
	var hpSpawnIndex = 0;
	if (hpIndex >= 2) {
		var ranIndex = irandom_range(0, 9);
		if (hpIndex*3 - 4 > ranIndex) {
			hpSpawnIndex = irandom_range(1, 3);
		}
	}
	
	with (instance_create_layer(x-300, sY, "effect2", ob_chun_stageSpawn)) {
		nextChun = other.chunSpawn;
	}
	if (hpSpawnIndex != 1) {
		instance_create_layer(x-100, sY+80, "effect2", ob_itemSpawnEf);
	}
	if (hpSpawnIndex != 2) {
		instance_create_layer(x+100, sY+80, "effect2", ob_skSpawnEf);
	}
	if (hpSpawnIndex != 3) {
		instance_create_layer(x+300, sY+80, "effect2", ob_coinSpawnEf);
	}
	if (hpSpawnIndex != 0) {
		instance_create_layer(x-300 + hpSpawnIndex*200, sY+80, "effect2", ob_hpSpawnEf);
	}
	
	if (global.clearStage >= 5) {
		instance_create_layer(x-500, sY+80, "effect2", ob_chun_enhanceEf);
	}
}


isCollision = false;
alarm[0] = 1;