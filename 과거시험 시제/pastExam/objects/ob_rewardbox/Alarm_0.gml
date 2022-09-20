/// @description Insert description here
// You can write your code in this editor
with (ob_roomControl) {
	other.mobNum = mobNum;
}
if (isCollision && !isActive && mobNum <= 0) {
	var sY = bbox_bottom - 192;
	isActive = true;
	if (global.hp < 9 && global.clearStage >= 15)	{ 
		global.hp++;	
		instance_create_layer(0, 0, "effect", ob_healEf);	
	}
	with (instance_create_layer(x-500, sY, "effect2", ob_chun_stageSpawn)) {
		nextChun = other.chunSpawn;
	}
	with (instance_create_layer(x-300, sY+80, "effect2", ob_itemSpawnEf)) {

	}
	with (instance_create_layer(x-100, sY+80, "effect2", ob_skSpawnEf)) {

	}
}


isCollision = false;
alarm[0] = 1;