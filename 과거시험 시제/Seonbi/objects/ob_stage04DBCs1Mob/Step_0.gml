/// @description Insert description here
// You can write your code in this editor
var stateS = ob_roomControl.talkCnt;

if (stateS == 8) 
{
	sprite_index = sp_dok3_walk;
	image_xscale = -1;
	x = x - 4;
}
if (stateS == 9) 
{
	with (instance_create_layer(50, y-50, "instances", ob_dok3))
	{
		image_xscale = -1;
		state = -1;
		isDie = true;
		dir = -1;
		hp = 0;
	}
	instance_destroy();
}

