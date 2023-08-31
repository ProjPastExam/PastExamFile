/// @description player gameover
// You can write your code in this editor
dark++;
if ( dark < 30 ) alarm[9] = 1;
else {
	uc_set_view_scale(1, 1);
	room_speed = 60;
	global.hp = global.hpMax;
	global.mp = 0;
	global.money = 0;
	
	if (isTuto) {
		part_system_destroy(global.hitEf);
		part_system_destroy(global.hitEf2);
		room_goto(room);
	}
	else {
		part_system_destroy(global.hitEf);
		part_system_destroy(global.hitEf2);
		
		if (global.checkUse == 1)
		{
			global.checkUse = 2;
			room_goto(global.checkPoint);
		}
		else
		{
			sc_itemSet();
			global.sk1 = 0;
			global.sk2 = 0;
			global.sk3 = 0;
			room_goto(r_start);
		}
	}
}

