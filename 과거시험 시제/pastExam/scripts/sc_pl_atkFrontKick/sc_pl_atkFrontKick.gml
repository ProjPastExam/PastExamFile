// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkFrontKick(){
	
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_frontKick;
	var atk;
	
	if ( atkProcess > 3 && atkProcess < 38 ) {
		if (keyAttack) {
			if ( keyDown ) 		nextAtk = 5;
			else if ( keyTop ) 	nextAtk = 6;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else nextAtk = 2;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}
	
	if ( atkProcess > 44 && atkProcess < 78 ) {
		if (keyAttack) {
			if ( keyDown ) 		nextAtk = 5;
			else if ( keyTop ) 	nextAtk = 6;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else nextAtk = 2;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}
	
	if ( atkProcess > 87 && atkProcess < 107 ) {
		if (keyAttack) {
			if ( keyDown ) 		nextAtk = 5;
			else if ( keyTop ) 	nextAtk = 6;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else nextAtk = 2;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}
	
	if ( atkProcess == 6 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf03);
		atk.damage = 1.5*sc_pl_kickDmg();
		atk.shock = sc_pl_kickShock()+30;
		atk.pene = sc_pl_kickPene();
		atk.hitAfter = 10;
		atk.sprite_index = sp_pl_atkEf03;
		atk.image_xscale = dir;
		atk.mpUp = sc_pl_kickMana();
		SE_Play(s_kick01, global.vol);
		//audio_play_sound(s_kick01, 5, false);
	}
	
	if ( atkProcess == 45 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf03);
		atk.damage = 1.5*sc_pl_kickDmg();
		atk.shock = sc_pl_kickShock()+30;
		atk.pene = sc_pl_kickPene();
		atk.hitAfter = 10;
		atk.sprite_index = sp_pl_atkEf03;
		atk.image_xscale = dir;
		atk.mpUp = sc_pl_kickMana();
		SE_Play(s_kick01, global.vol);
		//audio_play_sound(s_kick01, 5, false);
	}
	
	if ( atkProcess == 87 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf03);
		atk.damage = 2* sc_pl_kickDmg();
		atk.shock = sc_pl_kickShock()+30;
		atk.pene = sc_pl_kickPene();
		atk.hitAfter = 10;
		atk.sprite_index = sp_pl_atkEf03;
		atk.image_xscale = dir;
		atk.mpUp = sc_pl_kickMana();
		SE_Play(s_kick01, global.vol);
		//audio_play_sound(s_kick01, 5, false);
	}
	
	//대쉬 제어
	if ( (atkProcess > 14 && atkProcess < 44) || (atkProcess > 40 && atkProcess < 77) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
	
	if ( (atkProcess > 47 && atkProcess < 77) || (atkProcess > 25 && atkProcess < 44) ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; xSpeed = 16*dir; }
	else if ( atkProcess < 12 )	{ image_index = 1; xSpeed = 10*dir; }
	else if ( atkProcess < 16 )	{ image_index = 2; xSpeed = 8*dir; }
	else if ( atkProcess < 20 )	{ image_index = 2; xSpeed = 0; }
	else if ( atkProcess < 30 )	{ image_index = 2; xSpeed = 0;
		if (nextAtk == 2)	{ atkProcess = 40;}
		else if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
		else if (nextAtk == 6)	{ canMove = 6;	atkProcess = 0; }
		else if (nextAtk == 4)	{ canMove = 4;	atkProcess = 0; }
		sc_pl_skComb();
	}
	else if (atkProcess < 38) { canMove = 0;	atkProcess = -5;}
	
	if ( atkProcess < 40 ) {}
	else if ( atkProcess < 42 )	{ image_index = 3; nextAtk = 0; xSpeed = 12*dir; nextAtk = 0;}
	else if ( atkProcess < 45 )	{ image_index = 4; xSpeed = 16*dir; }
	else if ( atkProcess < 50 )	{ image_index = 5; xSpeed = 12*dir; }
	else if ( atkProcess < 56 )	{ image_index = 6; xSpeed = 10*dir; }
	else if ( atkProcess < 60 )	{ image_index = 6; xSpeed = 8*dir; }
	else if ( atkProcess < 70 )	{ image_index = 6; xSpeed = 0; 
		if (nextAtk == 2)	{ atkProcess = 80;}
		else if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
		else if (nextAtk == 6)	{ canMove = 6;	atkProcess = 0; }
		else if (nextAtk == 4)	{ canMove = 4;	atkProcess = 0; }
		sc_pl_skComb();
	}
	else if (atkProcess < 78) { canMove = 0;	atkProcess = -5;}
	
	if ( atkProcess < 80 ) {}
	else if ( atkProcess < 83 )	{ image_index = 8; }
	else if ( atkProcess < 87 )	{ image_index = 9; xSpeed = 16*dir; }
	else if ( atkProcess < 92 )	{ image_index = 9; xSpeed = 12*dir; }
	else if ( atkProcess < 96 )	{ image_index = 9; xSpeed = 10*dir; }
	else if ( atkProcess < 104 ) {
		if (nextAtk == 2)	{ canMove = 2;	atkProcess = 3; }
		else if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
		else if (nextAtk == 6)	{ canMove = 6;	atkProcess = 0; }
		else if (nextAtk == 4)	{ canMove = 4;	atkProcess = 0; }
		sc_pl_skComb();
	}
	else	{ canMove = 0;	atkProcess = -5; }
	
}