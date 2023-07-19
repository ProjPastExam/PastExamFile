/// @description Insert description here
// You can write your code in this editor

var state = ob_roomControl.talkCnt;
//if (state == 8) x = x - 36;



switch (state) {
	
case 6:
	sprite_index = sp_sinBW_walk;
	image_xscale = 1;
	x += 4;
	break;
	
case 7:
	if (active) 
	{
		sprite_index = sp_sinBW_cs;
		image_index = 0;
		active = false;
	}
	break;
	
case 9:
	sprite_index = sp_sinBW_stand;
	break;
	
case 10:
	image_xscale = -1;
	break;
	/*
case 4:
	if (active) {
		active = false;
		chunEf = instance_create_layer(x, y+50, "roomControl", ob_tutoChunCs1Ef);
	}
	break;
	
case 5:
	active = true;
	break;
	
case 6:
	sprite_index = sp_chun_spell;
	if (active) {
		active = false;
		image_index = 0;
	}
	break;
	*/
}
	