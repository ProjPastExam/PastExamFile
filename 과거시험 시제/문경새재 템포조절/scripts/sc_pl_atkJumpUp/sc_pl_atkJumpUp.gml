// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkJumpUp(){
	atkProcess++;
	image_xscale = dir;
	sprite_index = sp_pl_jumpAtkUp;
	var atk;
	
	if ( atkProcess > 4 ) {
		if (keyAttack) {
			if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 7;
			else nextAtk = 2;
		}
		
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}
	
	
	if ( atkProcess == 8 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf04);
		atk.damage = 2 * sc_pl_kickDmg();
		atk.shock = sc_pl_kickShock()-80;
		atk.pene = sc_pl_kickPene();
		atk.hitAfter = 10;
		atk.sprite_index = sp_pl_atkEf04;
		atk.image_xscale = dir;
		atk.mpUp = sc_pl_kickMana();
		audio_play_sound(s_kick01, 5, false);
	}
	
	//대쉬 제어
	if ( (atkProcess > 10) ) {
		if ( keyDash && isDash ) nextAtk = 10;
	}
		
	if ( (atkProcess > 16) ) {
		sc_pl_atkDnJ(2);
	}
	
	if ( atkProcess < 8 )		{ image_index = 0; nextAtk = 0; if (isJump) { ySpeed = -5; } }
	else if ( atkProcess < 12 )	{ image_index = 1; if (isJump) { ySpeed = -10; } }
	else if ( atkProcess < 16 )	{ image_index = 2; if (isJump) { ySpeed = -5; } }
	else if ( atkProcess < 21 )	{ image_index = 3; }
	else if ( atkProcess < 35 ) { 
		if (!isJump)		{ canMove = 0;	atkProcess = -10; }
		if (nextAtk == 2)	{ canMove = 11;	atkProcess = 15; }
		if (nextAtk == 7)	{ canMove = 9;	atkProcess = 0; }
	}
	else	{ canMove = 0;	atkProcess = -10; }
}