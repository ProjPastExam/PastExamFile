// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkBack(){
atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkBack;
	var atk;
	
	if ( atkProcess > 16 ) {
		if (keyAttack) {
			if ( keyDown )													nextAtk = 5;
			else if ( keyTop ) 												nextAtk = 6;
			else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 7;
			else															nextAtk = 2;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}
	
	if ( atkProcess == 21 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf01);
		atk.damage = sc_pl_atkDmg();
		atk.shock = sc_pl_atkShock();
		atk.pene = sc_pl_atkPene();
		atk.hitAfter = 10;
		atk.sprite_index = sp_pl_atkEf01;
		atk.image_xscale = dir;
		atk.mpUp = sc_pl_atkMana();
		audio_play_sound(s_arrow01, 5, false);
	}
	
	//대쉬 제어
	if ( atkProcess > 15 ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( atkProcess > 21 && !isJump ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; xSpeed = -16*dir; }
	else if ( atkProcess < 15 )	{ image_index = 1; xSpeed = -12*dir; }
	else if ( atkProcess < 21 )	{ image_index = 2; xSpeed = -8*dir; }
	else if ( atkProcess < 27 )	{ image_index = 3; xSpeed = -4*dir; }
	else if ( atkProcess < 35 )	{ image_index = 4; }
	else if ( atkProcess < 45 ) { 
		if ( nextAtk == 2 ) { atkProcess = 0;	canMove = 2; }
		if ( nextAtk == 5 ) { atkProcess = 0;	canMove = 5; }
		if ( nextAtk == 6 ) { atkProcess = 0;	canMove = 6; }
		if ( nextAtk == 7 ) { atkProcess = 0;	canMove = 7; }
		if ( nextAtk == -1 && global.mp >= skMp[global.sk1]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk1; }
		if ( nextAtk == -2 && global.mp >= skMp[global.sk2]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk2; }
		if ( nextAtk == -3 && global.mp >= skMp[global.sk3]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk3; }
	}
	else { canMove = 0;	atkProcess = -5; }
	
}