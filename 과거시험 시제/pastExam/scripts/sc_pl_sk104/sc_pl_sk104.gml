// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk104(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk104;
	var atk;
	
	if ( atkProcess > 50 ) {
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

	
	if ( atkProcess == 10 || atkProcess == 20 ||atkProcess == 30 ||atkProcess == 40 ||
			atkProcess == 50) {
		SE_Play(s_arrow01, global.vol);
		//audio_play_sound(s_arrow01, 5, false);
		atk = instance_create_layer(x, y, "effect", ob_atkEf01);
		atk.damage = sc_pl_atkDmg()*1.2;
		atk.shock = sc_pl_atkShock();
		atk.pene = sc_pl_atkPene();
		atk.hitAfter = 10;
		atk.image_xscale = dir;
		atk.sprite_index = sp_pl_atkEf104;
		global.mp -= global.skMp[104]/5;
	}
	
	if ( atkProcess == 10 || atkProcess == 40 ) 
		{ atk.image_angle = 3; }
	if ( atkProcess == 20 || atkProcess == 50 ) 
		{ atk.y +=+5; }
	if ( atkProcess == 30 ) 
		{ atk.image_angle = -3; atk.y +=+10; }
	
	//대쉬 제어
	if ( (atkProcess > 10 ) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( (atkProcess > 10 ) ) { sc_pl_atkDnJ(); }
	
	
	if ( atkProcess < 5 )		{ image_index = 0; }
	else if ( atkProcess < 10 )	{ image_index = 1; }
	else if ( atkProcess < 15 )	{ image_index = 2; }
	else if ( atkProcess < 20 )	{ image_index = 3; }
	else if ( atkProcess < 25 )	{ image_index = 4; }
	else if ( atkProcess < 30 )	{ image_index = 5; }
	else if ( atkProcess < 35 )	{ image_index = 6; }
	else if ( atkProcess < 40 )	{ image_index = 7; }
	else if ( atkProcess < 45 )	{ image_index = 8; }
	else if ( atkProcess < 50 )	{ image_index = 9; }
	else if ( atkProcess < 55 )	{ image_index = 10; }
	else if ( atkProcess < 70 )	{ image_index = 11; }
	else						{ canMove = 0;	atkProcess = -5; }
}
