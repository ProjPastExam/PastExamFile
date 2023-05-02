/// @description Insert description here
// You can write your code in this editor
var state = ob_roomControl.talkCnt;
if (state == 15 ) 
{
	x -= 8;
}

if (state == 12 && active) 
{
	active = false;

}
if (state == 15 && !active) 
{
	active = true;
	sprite_index = sp_gong_run;
}


