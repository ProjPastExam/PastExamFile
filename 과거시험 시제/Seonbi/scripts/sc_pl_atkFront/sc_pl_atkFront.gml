// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkFront(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkFront1;
	var atk;
	
	if (keyAttack) {
		if ( keyDown && isJump )										nextAtk = 5;
		else if ( keyTop ) 	nextAtk = 6;
		else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 7;
		else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
		else nextAtk = 2;
	}
	
	if ( atkProcess == 6 ) {
		sc_pl_atkEf(sc_pl_kickDmg(), sc_pl_kickPene(), sc_pl_kickShock(), sc_pl_kickMana(), 
			0, 1, 0, sp_pl_atkEf03, dir);
		SE_Play(s_kick01, global.vol);
		//audio_play_sound(s_kick01, 5, false);
	}
	
	if ( atkProcess == 24 ) {
		sc_pl_arrowAtk(1,1);
	}
	
	//대쉬 제어
	if ( keyDash ) nextAtk = 10;
	if ( keyJump ) nextAtk = 9;
	sc_pl_skKey();
		
	if ( atkProcess > 8 ) {
		sc_pl_atkDnJ();
		sc_pl_skComb();
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; xSpeed = 16*dir; }
	else if ( atkProcess < 12 )	{ image_index = 1; xSpeed = 9*dir; }
	else if ( atkProcess < 17 )	{ image_index = 2; xSpeed = 4*dir; }
	else if ( atkProcess < 24 )	{ image_index = 3; }
	else if ( atkProcess < 31 )	{ image_index = 4; }
	else if ( atkProcess < 37 )	{ image_index = 5; }
	else if ( atkProcess < 48 ) { 
		if (nextAtk == 2)	{ canMove = 2;	atkProcess = 0; }
		else if (nextAtk == 4)	{ canMove = 4;	atkProcess = 0; }
		else if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
		else if (nextAtk == 6)	{ canMove = 6;	atkProcess = 0; }
		else if (nextAtk == 7)	{ canMove = 7;	atkProcess = 0; }
	}
	else	{ canMove = 0;	atkProcess = -5; }
}