// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkJumpUp(){
	atkProcess++;
	image_xscale = dir;
	sprite_index = sp_pl_jumpAtkUp;
	var atk;
	
	if ( atkProcess > 4 ) {
		if (keyAttack) {
			if ( keyDown && isJump )		nextAtk = 5;
			else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 7;
			else nextAtk = 2;
		}
	}
	
	
	if ( atkProcess == 8 ) {
		sc_pl_atkEf(sc_pl_kickDmg()*2, sc_pl_kickPene(), sc_pl_kickShock()-80, sc_pl_kickMana(), 
			18, 1, 0, sp_pl_atkEf04, dir);
		SE_Play(s_kick01, global.vol);
		//audio_play_sound(s_kick01, 5, false);
	}
	
	//대쉬 제어
	if ( (atkProcess > 4) ) {
		if ( keyDash && isDash ) nextAtk = 10;
		sc_pl_skKey();
	}
		
	if ( (atkProcess > 8) ) {
		sc_pl_atkDnJ(2);
		sc_pl_skComb();
	}
	
	if ( atkProcess < 8 )		{ image_index = 0; nextAtk = 0; if (isJump) { ySpeed = -6; } }
	else if ( atkProcess < 12 )	{ image_index = 1; if (isJump) { ySpeed = -12; } }
	else if ( atkProcess < 16 )	{ image_index = 2; if (isJump) { ySpeed = -6; } }
	else if ( atkProcess < 21 )	{ image_index = 3; }
	else if ( atkProcess < 35 ) { 
		if (!isJump)		{ canMove = 0;	atkProcess = -10; }
		if (nextAtk == 2)	{ canMove = 11;	atkProcess = 15; }
		else if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
		else if (nextAtk == 7)	{ canMove = 9;	atkProcess = 0; }
		
	}
	else	{ canMove = 0;	atkProcess = -10; }
}