// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkJump2(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	var atk;
	image_xscale = dir;
	
	if (isSin) {
		if ( isJump ) sprite_index = sp_pl_jumpSin;
		else sprite_index = sp_pl_atk2sin;
	}
	else {
		if ( isJump ) sprite_index = sp_pl_jumpAtk2;
		else sprite_index = sp_pl_atk2;
	}
	

	
	if ( keyAttack) {
		if ( keyDown )		nextAtk = 5;
		else				nextAtk = 1;
	}
	
	if ( atkProcess == 6 ) {
		
		if (isJump && (itemJump != -1)) {
			ySpeed = -6;
		}
	}
	
	if ( atkProcess == 24 ) {
		sc_pl_arrowAtk2();
		/*
		if (isSin) {
			atk = instance_create_layer(x, y, "effect", ob_sinEf01);
			atk.grade = isSin;
			atk.image_xscale = dir;
			atk.dir = dir;
			SE_Play(s_arrow02, global.vol);
			//global.comCt -= (20 - isSin*5);
		}
		else if (global.item11) {
			var fDmg = 2.5*sc_pl_fireDmg() * (1+global.item11)/2;
			sc_pl_atkEf(fDmg, sc_pl_firePene(), sc_pl_fireShock()*1.2, sc_pl_fireMana(), 
				0, 11, 0, sp_pl_itemEf11_2, dir,,,,,,ob_atkEfItem11);
			SE_Play(s_item11_2, global.vol);
		}
		else {
			sc_pl_atkEf(sc_pl_atkDmg()*2.5, sc_pl_atkPene(), sc_pl_atkShock()*1.2, sc_pl_atkMana(), 
				0, 0, 0, sp_pl_atkEf02, dir);
			SE_Play(s_arrow02, global.vol);
		}
		*/
	}
	
	//대쉬 제어
	if ( (atkProcess > 9 ) ) {
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