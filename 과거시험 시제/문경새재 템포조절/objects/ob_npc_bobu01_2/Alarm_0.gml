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
	if (talkCnt == 1 && itemGive == false && instance_exists(ob_roomControl)
		&& ob_roomControl.isTalk == 0) {
		itemGive = true;
		var it = instance_create_depth(x, y+30, 0, ob_item);
		it.itemNum = 0;
		it.itemGrade = 3;
		it.isNew = true;
		it.image_xscale = image_xscale;
	}
}
else {
	image_speed = 0;
}
alarm[0] = 1;