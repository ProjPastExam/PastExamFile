// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkUp(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkUp;
	var atk;
	
	if ( atkProcess > 38 && atkProcess < 58 && keyAttack ) {
		if ( keyDown ) 	nextAtk = 5;
	}
	
	if ( atkProcess == 6 ) {
		sc_pl_atkEf(sc_pl_kickDmg()*2, sc_pl_kickPene(), sc_pl_kickShock()-80, sc_pl_kickMana(), 
			18, 1, 0, sp_pl_atkEf04, dir);
		SE_Play(s_kick01, global.vol);
		//audio_play_sound(s_kick01, 5, false);
	}
	
	if ( atkProcess == 32 ) {
		var atk = sc_pl_atkEf(sc_pl_atkDmg()*2.5, sc_pl_atkPene(), sc_pl_atkShock()*1.2, sc_pl_atkMana(), 
			0, 0, 0, sp_pl_atkEf02, dir);
		
		if ( dir == 1 )		atk.image_angle = 35;
		if ( dir == -1 )	atk.image_angle = -35;
		SE_Play(s_arrow02, global.vol);
		//audio_play_sound(s_arrow02, 5, false);
	}
	
	//대쉬 제어
	if ( (atkProcess > 6) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( (atkProcess > 12) ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess < 6 )		{ 
		image_index = 0; nextAtk = 0;
		xSpeed = 4*dir;
	}
	else if ( atkProcess < 12 )	{ image_index = 1; }
	else if ( atkProcess < 16 )	{ image_index = 2; }
	else if ( atkProcess < 21 )	{ image_index = 3;}
	else if ( atkProcess < 32 )	{ image_index = 4; }
	else if ( atkProcess < 38 )	{ image_index = 5; }
	else if ( atkProcess < 42 )	{ image_index = 6; }
	else if ( atkProcess < 46 )	{ image_index = 7; }
	else if ( atkProcess < 50 ) { 
		if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
	}
	else	{ canMove = 0;	atkProcess = -5; }
}