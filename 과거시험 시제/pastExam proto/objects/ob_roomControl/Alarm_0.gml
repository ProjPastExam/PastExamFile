/// @description Insert description here
// You can write your code in this editor
if ( pause > 0 ) pause--;
if ( slow > 0 )	slow--;
if ( keyboard_check_pressed(vk_escape) && global.hp > 0 ) {
	if ( pause == -1 )	pause = 0;
	else				pause = -2;
}
if ( pause == -2 ) {
	instance_create_depth(x, y, 0, ob_demoMain);
	pause = -1;
}
if (hpProcess > 0) hpProcess--;

if (slow == 0) room_speed = 60;
else room_speed = 25;
alarm[0] = 1;
