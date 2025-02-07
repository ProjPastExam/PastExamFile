// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkDown(){
	
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkDown;
	var atk;
	
	if ( atkProcess > 12 ) {
		if (keyAttack) {
			if ( keyTop ) 													nextAtk = 6;
			else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 3;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else															nextAtk = 2;
		}
		sc_pl_skKey();
	}
	
	
	if ( atkProcess == 6 ) {
		sc_pl_atkEf(sc_pl_kickDmg(), sc_pl_kickPene(), sc_pl_kickShock(), sc_pl_kickMana(), 
			0, 1, 0, sp_pl_atkEf03, dir);
		SE_Play(s_kick01, global.vol);
		//audio_play_sound(s_kick01, 5, false);
	}
	
	if ( atkProcess == 27 ) {
		sc_pl_atkEf(sc_pl_atkDmg(), sc_pl_atkPene(), sc_pl_atkShock(), sc_pl_atkMana(), 
			0, 0, 0, sp_pl_atkEf01, dir);
		SE_Play(s_arrow01, global.vol);
		//audio_play_sound(s_arrow01, 5, false);
		
		if (isJump && (itemJump != -1)) {
			ySpeed = -7;
			xSpeed = dir * -2;
		}
	}
	
	//대쉬 제어
	if ( atkProcess > 20 ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( atkProcess > 33 ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess == 1 )		{ dir = dir * -1; }
	if ( atkProcess < 3 )		{ image_index = 0; nextAtk = 0; xSpeed = -4*dir; }
	else if ( atkProcess < 6 )	{ image_index = 1; xSpeed = -8*dir; }
	else if ( atkProcess < 11 )	{ image_index = 2; xSpeed = -12*dir;}
	else if ( atkProcess < 16 )	{ image_index = 3; xSpeed = -8*dir; }
	else if ( atkProcess < 19 )	{ image_index = 4; xSpeed = -4*dir; }
	else if ( atkProcess < 23 )	{ image_index = 5; }
	else if ( atkProcess < 27 )	{ image_index = 6; }
	else if ( atkProcess < 33 )	{ 
		image_index = 7;
		sc_pl_skComb();
	}
	else if ( atkProcess < 39 )	{ image_index = 8; }
	else if ( atkProcess < 45 ) { 
		if ( nextAtk == 2 ) { nextAtk = 0; atkProcess = 0; canMove = 2; }
		else if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; }
		else if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 4; }
		else if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; }
		
	}
	else	{ canMove = 0;	atkProcess = -5; }
	
}