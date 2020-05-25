isPeace = NULL; 
canAttack = false;
//	image_index = sp_mobStern;
//	image_xscale = orig_xscale * sign(xSpeed);
Stern_delay -= 1;
xSpeed = 0;			// xSpeed가 0이되면 몬스터 스프라이트가 사라짐
if ( !Stern_delay ) { 
	if( image_xscale > 0 ) { xSpeed = sSpeed; }
	else if ( image_xscale < 0 ) { xSpeed = -sSpeed; }
	isStern = false;
	Stern_delay = room_speed; 
	isPeace = false;
	AttackedCount = 0;
}