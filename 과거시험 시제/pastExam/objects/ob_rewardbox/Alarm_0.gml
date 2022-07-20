/// @description Insert description here
// You can write your code in this editor
with (ob_roomControl) {
	other.mobNum = mobNum;
}
if (isCollision && !isActive && mobNum <= 0) {
	var sY = bbox_bottom - 192;
	isActive = true;
	with (instance_create_layer(x-400, sY, "Instances", ob_chun_stageSpawn)) {
		nextChun = other.chunSpawn;
	}
	with (instance_create_layer(x-200, sY+80, "Instances", ob_itemSpawnEf)) {

	}
	with (instance_create_layer(x, sY+80, "Instances", ob_skSpawnEf)) {

	}
}


isCollision = false;
alarm[0] = 1;