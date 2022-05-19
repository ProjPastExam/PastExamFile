/// @description Insert description here
// You can write your code in this editor
dark++;
if ( dark < 30 ) alarm[9] = 1;
else {
	uc_set_view_scale(1, 1);
	room_speed = 60;
	room_goto(r_main);
}

