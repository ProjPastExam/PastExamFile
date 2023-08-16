// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk2(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	var atk;
	image_xscale = dir;
	if (isSin) {
		canMove = 21;
	}

	if ( isJump ) sprite_index = sp_pl_jumpAtk2;
	else sprite_index = sp_pl_atk2;

	

	
	if ( atkProcess > 9 ) {
		if (keyAttack) {
			if ( keyDown && isJump )	nextAtk = 5;
			else if ( keyTop )		 	nextAtk = 6;
			else						nextAtk = 1;
		}
	}
	sc_pl_skKey();
	
	if ( atkProcess == 26 ) {
		sc_pl_arrowAtk2();
		/*
		if (global.item11) {
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

	if ( keyDash ) nextAtk = 10;
	if ( keyJump ) nextAtk = 9;
	sc_pl_atkDnJ();

	
	if ( atkProcess < 8 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 18 )	{ image_index = 1; }
	else if ( atkProcess < 26 )	{ image_index = 2; }
	else if ( atkProcess < 32 )	{ image_index = 3; }
	else if ( atkProcess < 38)	{ image_index = 4; }
	else if ( atkProcess < 44 )	{ image_index = 5; }
	else if ( atkProcess < 50 )	{
		if ( nextAtk == 1 )	{ canMove = 1;	atkProcess = 0; }
		else if ( nextAtk == 5 && isJump )	{ canMove = 5;	atkProcess = 0; }
		else if ( nextAtk == 6 )	{ canMove = 6;	atkProcess = 0; }
		else if ( nextAtk == 10 ) {
			dProcess = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
	}
	else { canMove = 0;	atkProcess = -5; }
	sc_pl_skComb();
}