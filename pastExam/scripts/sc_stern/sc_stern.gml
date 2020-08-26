function sc_stern() {
//	sprite_index = argument0;

	isPeace = ture;
	canAttack = false;
	
	image_xscale = orig_xscale * sign(xSpeed);
	Stern_delay -= 1;
	xSpeed = 0;
	if ( !Stern_delay ) { 
		if( image_xscale < 0 ) { xSpeed = sSpeed; }
		else if ( image_xscale > 0 ) { xSpeed = -sSpeed; }
		isStern = false;
		Stern_delay = room_speed; 
		isPeace = false;
		AttackedCount = 0;
	}
}