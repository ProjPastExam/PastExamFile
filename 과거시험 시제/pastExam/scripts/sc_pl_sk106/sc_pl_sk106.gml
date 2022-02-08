// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk106(){
	sc_pl_skDir()
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk106;
	var atk;
	
	if ( atkProcess > 70 ) {
		if ( keyAttack ) {
			if ( keyDown ) 													nextAtk = 5;
			else if ( keyTop ) 												nextAtk = 6;
			else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 3;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else															nextAtk = 1;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}

	if ( atkProcess == 54 ) {
		sc_pl_atkEf(sc_pl_fireDmg()*1.5, sc_pl_firePene()+40, sc_pl_fireShock()+150, 0, 
			4, 2, 0, sp_pl_atkEf106, dir, 0, x-(60*dir), y+70);
		uc_shake(12, 0.1);
		SE_Play(s_pl_sk101, global.vol);
		//audio_play_sound(s_pl_sk101, 5, false);
		part_type_scale(global.gunEf, dir, 1);
		part_particles_create( global.hitEf, x-(80*dir), y+60, global.gunEf, 1 );
		//if (sc_getRoomValue("pause") != NULL) ob_roomControl.pause = 20;
		global.mp -= global.skMp[106];
		global.skKul[skState] = global.skKulData[106];
	}
	
	//대쉬 제어
	if ( (atkProcess > 14 ) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
	
	if ( (atkProcess > 24 ) ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess < 6 )		{ image_index = 3; nextAtk = 0; }
	//else if ( atkProcess < 10 )	{ image_index = 3; }
	//else if ( atkProcess < 15 )	{ image_index = 2; }
	//else if ( atkProcess < 20 )	{ image_index = 3; }
	else if ( atkProcess < 12 )	{ image_index = 4; }
	else if ( atkProcess < 18 )	{ image_index = 5; }
	else if ( atkProcess < 28 )	{ image_index = 6; }
	else if ( atkProcess < 32 )	{ image_index = 7; }
	else if ( atkProcess < 38 )	{ image_index = 8; }
	else if ( atkProcess < 44 )	{ image_index = 9; }
	else if ( atkProcess < 54 )	{ image_index = 10; }
	else if ( atkProcess < 70 )	{ image_index = 11; xSpeed = dir * -15; }
	else if ( atkProcess < 75 )	{ image_index = 12; xSpeed = dir * -10; }
	else if ( atkProcess < 80 )	{ image_index = 13; xSpeed = dir * -5; }
	else if ( atkProcess < 85 )	{ image_index = 14; xSpeed = 0; }
	else if ( atkProcess < 100 )	{
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
