/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("slow") == 0 )	{
	image_speed = 1;
}
else {
	image_speed = room_speed/60;
}

if ( sc_getRoomValue("pause") == 0 ) {
	sc_npcMain();
	if (!isRest && talkCnt == 1 && global.hp != global.hpMax
		&& instance_exists(ob_roomControl) && ob_roomControl.isTalk == 0) {
		isRest = true;
		if (instance_exists(ob_roomControl)) ob_roomControl.alarm[8] = 1;
		global.hp = global.hpMax;
	}
}
else {
	image_speed = 0;
}
alarm[0] = 1;