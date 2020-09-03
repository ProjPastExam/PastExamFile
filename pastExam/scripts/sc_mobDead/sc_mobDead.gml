// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobDead(argument0, argument1){
	mobDeadProcess += 1;
	sprite_index = argument0;
	var spTime = argument1;


	if ( mobDeadProcess < spTime*5 )			{ image_index = 0; }
	else if ( mobDeadProcess < spTime*10 )	{ image_index = 1; }
	else if ( mobDeadProcess < spTime*15 )	{ image_index = 2; }
	else if ( mobDeadProcess < spTime*20 )	{ image_index = 3; }
	else if ( mobDeadProcess < spTime*25 )	{ image_index = 4; }
	else if ( mobDeadProcess < spTime*30+1 )	{ image_index = 4; }
	else { instance_destroy(self); mobDeadProcess = 0; }
}