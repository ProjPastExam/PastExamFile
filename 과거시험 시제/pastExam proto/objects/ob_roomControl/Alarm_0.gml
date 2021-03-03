/// @description Insert description here
// You can write your code in this editor
if ( pause > 0 ) pause--;
if ( slow > 0 )	slow--;
if ( keyboard_check_pressed(vk_escape) ) {
	if ( pause == -1 )	pause = 0;
	else				pause = -1;
}
alarm[0] = 1;

