/// @description Insert description here
// You can write your code in this editor
dark++;
if ( dark < 30 ) alarm[9] = 1;
else {
	uc_set_view_scale(1, 1);
	room_speed = 60;
	sc_itemSet();
	global.hp = global.hpMax;
	global.mp = 0;
	
	global.sk1 = 0;
	global.sk2 = 0;
	global.sk3 = 0;

	room_goto(r_main);
}

