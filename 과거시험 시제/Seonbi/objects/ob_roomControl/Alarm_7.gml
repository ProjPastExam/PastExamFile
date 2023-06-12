/// @description Insert description here
// You can write your code in this editor
dark++;
if ( dark < 30 ) alarm[7] = 1;
else {
	part_system_destroy(global.hitEf);
	part_system_destroy(global.hitEf2);
	room_goto(nextRoom);
}