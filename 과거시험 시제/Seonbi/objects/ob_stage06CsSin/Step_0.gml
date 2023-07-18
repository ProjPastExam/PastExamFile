/// @description Insert description here
// You can write your code in this editor

var state = ob_roomControl.talkCnt;
//if (state == 8) x = x - 36;



switch (state) {
	
case 10:
	visible = true;
	break;
	
case 15:
	if (active) {
		active = false;
		SE_Play(s_sin2_atk2_tele, global.vol);
		alarm[2] = 30;
		with (instance_create_layer(x, y, "effect", ob_csEffect))
		{
			sprite_index = sp_sinB2_warp1Ef;
		}
	}
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
	