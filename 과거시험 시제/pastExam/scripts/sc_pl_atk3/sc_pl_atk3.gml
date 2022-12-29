// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk3(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk_baby;
	isAtk3 = 0;
	
	if ( atkProcess > 10 && atkProcess < 58 ) {
		if ( keyAttack ) {
			if ( keyDown ) 													nextAtk = 5;
			else if ( keyTop ) 												nextAtk = 6;
			else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 3;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else															nextAtk = 1;
		}
		sc_pl_skKey();
	}

	
	if ( atkProcess == 30 ) {
		sc_pl_atkEf(sc_pl_atkDmg()*4, sc_pl_atkPene(), sc_pl_atkShock()+75, sc_pl_atkMana()*2, 
			0, 0, 0, sp_pl_atkEf100, dir,,,,(global.item9-1)*20);
		uc_shake(4, 0.1);
		SE_Play(s_pl_sk100, global.vol);
		//audio_play_sound(s_pl_sk100, 5, false);
		//if (instance_exists(ob_roomControl)) ob_roomControl.pause = 20;
		//global.mp -= 200;
	}
	
	//대쉬 제어
	if ( (atkProcess > 1 && atkProcess < 64) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( atkProcess > 10 ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 14 )	{ image_index = 1; }
	else if ( atkProcess < 30 )	{ image_index = 2; }
	else if ( atkProcess < 35 )	{ image_index = 3; xSpeed = dir * -8; }
	else if ( atkProcess < 40 )	{ image_index = 4; xSpeed = dir * -5; }
	else if ( atkProcess < 55 )	{ image_index = 5; xSpeed = dir * -2; }
	else if ( atkProcess < 60 )	{
		if ( nextAtk == 1 ) { nextAtk = 0; atkProcess = 0; canMove = 1; }
		else if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; }
		else if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 4; }
		else if ( nextAtk == 5 ) { nextAtk = 0; atkProcess = 0; canMove = 5; }
		else if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; }
		else if ( nextAtk == 10 ) {
			dProcess = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
		sc_pl_skComb();
	}
	else { canMove = 0;	atkProcess = -5; }
}