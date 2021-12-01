function sc_pl_sprite(argument0) {

	var walkSpeed	= 5.5;
	//image_speed = 1;
	image_xscale = dir;

	switch ( argument0 ) {
		case 0:
			sprite_index = sp_pl_stand;
			break;
	
		case 1:
			sprite_index = sp_pl_run;
			break;
		
		case 2:
			sprite_index = sp_pl_jump2;
			if (ySpeed < -7) { sprite_index = sp_pl_jump1; }
			else if (ySpeed < -5) image_index = 0;
			else if (ySpeed < -3) image_index = 1;
			else if (ySpeed < -1) image_index = 2;
			else if (ySpeed < 1) image_index = 3;
			else if (ySpeed < 3) image_index = 4;
			else if (ySpeed < 5) image_index = 5;
			else { sprite_index = sp_pl_jump3; }
			break;
	}


}
