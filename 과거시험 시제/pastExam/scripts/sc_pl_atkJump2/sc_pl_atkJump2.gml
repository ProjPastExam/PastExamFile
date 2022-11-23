// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkJump2(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	var atk;
	image_xscale = dir;
	
	if (isSin && global.comCt >= (20 - isSin*5)) {
		if ( isJump ) sprite_index = sp_pl_jumpSin;
		else sprite_index = sp_pl_atk2sin;
	}
	else {
		if ( isJump ) sprite_index = sp_pl_jumpAtk2;
		else sprite_index = sp_pl_atk2;
	}
	

	
	if ( atkProcess > 18 && atkProcess < 50 && keyAttack) {
		if ( keyDown )		nextAtk = 5;
		else				nextAtk = 1;
	}
	
	if ( atkProcess == 6 ) {
		
		if (isJump && (itemJump != -1)) {
			ySpeed = -6;
		}
	}
	
	if ( atkProcess == 24 ) {
		if (isSin && global.comCt >= (20 - isSin*5)) {
			atk = instance_create_layer(x, y, "effect", ob_sinEf01);
			//atk.damage = 10;
			//atk.shock = 10;
			//atk.pene = 0;
			//atk.hitAfter = 15;
			atk.grade = isSin;
			atk.image_xscale = dir;
			atk.dir = dir;
			SE_Play(s_arrow02, global.vol);
			//audio_play_sound(s_arrow02, 5, false);
			global.comCt -= (20 - isSin*5);
		}
		else {
			sc_pl_atkEf(sc_pl_atkDmg()*2.5, sc_pl_atkPene(), sc_pl_atkShock()*1.2, sc_pl_atkMana(), 
				0, 0, 0, sp_pl_atkEf02, dir);
			SE_Play(s_arrow02, global.vol);
			//audio_play_sound(s_arrow02, 5, false);
		}
	}
	
	//대쉬 제어
	if ( (atkProcess > 16 ) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
		sc_pl_skKey();
	}
		
	if ( (atkProcess > 24 ) ) {
		sc_pl_atkDnJ();
		sc_pl_skComb();
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0;  ySpeed = -1; }
	else if ( atkProcess < 15 )	{ image_index = 1; ySpeed = -2; }
	else if ( atkProcess < 24 )	{ image_index = 2; ySpeed = -1; }
	else if ( atkProcess < 30 )	{ image_index = 3; }
	else if ( atkProcess < 36 )	{ image_index = 4; }
	else if ( atkProcess < 45 )	{ image_index = 5; }
	else if ( atkProcess < 50 )	{
		if ( nextAtk == 1 )	{ canMove = 1;	atkProcess = 0; }
		else if ( nextAtk == 5 )	{ canMove = 5;	atkProcess = 0; }
		/*if ( nextAtk == 10 ) {
			dProcess = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}*/
	}
	else { canMove = 0;	atkProcess = -5; }
}