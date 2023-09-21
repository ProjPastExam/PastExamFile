// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkFront2(){
	atkProcess++;
	xSpeed = 0;
	if (isJump) xSpeed = dir*2;
	image_xscale = dir;
	sprite_index = sp_pl_atkFront2;
	
	
	if ( atkProcess == 24 && isAtk3 == 20 && global.item9 > 0 ) {
		canMove = 12;
		isAtk3 = 0;
		atkProcess = 0;
	}
	
	if (keyAttack) {
		if ( keyDown && isJump )		nextAtk = 5;
		else if ( keyTop ) 	nextAtk = 6;
		else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
		else				nextAtk = 2;
	}
	sc_pl_skKey();
	
	
	if ( atkProcess == 8 ) {
		sc_pl_atkEf(sc_pl_kickDmg(), sc_pl_kickPene(), sc_pl_kickShock()+30, sc_pl_kickMana(), 
			0, 1, 0, sp_pl_atkEf03, dir);
		SE_Play(s_kick01, global.vol);
		//audio_play_sound(s_kick01, 5, false);
	}
	
	//대쉬 제어
	if ( keyDash ) nextAtk = 10;
	if ( keyJump ) nextAtk = 9;
		
	if ( atkProcess > 8 ) {
		sc_pl_atkDnJ();
		sc_pl_skComb();
	}
	
	if ( atkProcess < 3 )	{ image_index = 0; nextAtk = 0; xSpeed = 14*dir; }
	else if ( atkProcess < 8 )	{ image_index = 1; xSpeed = 16*dir; }
	else if ( atkProcess < 14 )	{ image_index = 2; xSpeed = 12*dir; }
	else if ( atkProcess < 20 )	{ image_index = 3; xSpeed = 8*dir; }
	else if ( atkProcess < 25 )	{ image_index = 4; xSpeed = 4*dir; }
	else if ( atkProcess < 35 ) { image_index = 4; xSpeed = 0;
		{ canMove = 2;	atkProcess = 18; }
		if ( nextAtk == 5 )	{ canMove = 5;	atkProcess = 0; }
		else if ( nextAtk == 6 )	{ canMove = 6;	atkProcess = 0; }
		else if ( nextAtk == 4 )	{ canMove = 4;	atkProcess = 0; }
	}
	else { canMove = 0; atkProcess = -15; }

}