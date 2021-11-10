// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkFront2(){
	atkProcess++;
	xSpeed = 0;
	if (isJump) xSpeed = dir*2;
	image_xscale = dir;
	sprite_index = sp_pl_atkFront2;
	var atk;
	
	if ( atkProcess == 24 && isAtk3 == 20 ) {
		canMove = 12;
		isAtk3 = 0;
		atkProcess = 0;
	}
	
	if ( atkProcess > 8 ) {
		if (keyAttack) {
			if ( keyDown )		nextAtk = 5;
			else if ( keyTop ) 	nextAtk = 6;
			else				nextAtk = 2;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}
	
	
	if ( atkProcess == 8 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf03);
		atk.damage = 2 * sc_pl_kickDmg();
		atk.shock = sc_pl_kickShock() + 30;
		atk.pene = sc_pl_kickPene();
		atk.hitAfter = 10;
		atk.sprite_index = sp_pl_atkEf03;
		atk.image_xscale = dir;
		atk.mpUp = sc_pl_kickMana();
		audio_play_sound(s_kick01, 5, false);
	}
	
	//대쉬 제어
	if ( (atkProcess > 4) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( atkProcess > 10 ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess < 3 )	{ image_index = 0; nextAtk = 0; xSpeed = 14*dir; }
	else if ( atkProcess < 8 )	{ image_index = 1; xSpeed = 16*dir; }
	else if ( atkProcess < 14 )	{ image_index = 2; xSpeed = 12*dir; }
	else if ( atkProcess < 20 )	{ image_index = 3; xSpeed = 8*dir; }
	else if ( atkProcess < 25 )	{ image_index = 4; xSpeed = 4*dir; }
	else if ( atkProcess < 35 ) { image_index = 4; xSpeed = 0;
		{ canMove = 2;	atkProcess = 8; }
		if ( nextAtk == 5 )	{ canMove = 5;	atkProcess = 0; }
		if ( nextAtk == 6 )	{ canMove = 6;	atkProcess = 0; }
		if ( nextAtk == -1 && global.mp >= skMp[global.sk1]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk1; }
		if ( nextAtk == -2 && global.mp >= skMp[global.sk2]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk2; }
		if ( nextAtk == -3 && global.mp >= skMp[global.sk3]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk3; }
	}
	else { canMove = 0; atkProcess = -15; }

}