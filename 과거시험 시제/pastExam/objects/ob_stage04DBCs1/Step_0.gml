/// @description Insert description here
// You can write your code in this editor
var state = ob_roomControl.talkCnt;

if (state == 18 && active) 
{
	active = false;
	image_index = 0;
	sprite_index = sp_dbCs1DB;
}
if (state == 19 && !active) 
{
	active = true;
	image_index = 0;
	sprite_index = sp_dbCs1stand;
}


