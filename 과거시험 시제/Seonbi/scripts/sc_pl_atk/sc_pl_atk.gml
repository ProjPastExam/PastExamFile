// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	if (!isJump) sprite_index = sp_pl_atk;
	else sprite_index = sp_pl_jumpAtk;
	//var atk;
	
	if ( atkProcess == 1 ) {
		if (keyLeft)		{ dir = -1; }
		else if (keyRight)	{ dir = 1; }
	}
	if ( atkProcess > 0 && atkProcess < 24 && keyAttack ) nextAtk = 1;
	if ( atkProcess > 24 ) {
		if ( keyAttack ) {
			if ( keyDown && isJump)											nextAtk = 5;
			else if ( keyTop ) 												nextAtk = 6;
			else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 3;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else															nextAtk = 2;
		}
	}
	/*
	if ( atkProcess == 12 ) {
		if (item7 && global.comCt <= 0) {
			sc_pl_atkEf(sc_pl_atkDmg(), sc_pl_atkPene(), sc_pl_atkShock(), sc_pl_atkMana(), 
				0, 0, 0, sp_pl_atkEf01, dir,,,,,10 + item7*5);
			SE_Play(s_pl_item7, global.vol);
		}
		else if (global.item11) {
			var fDmg = sc_pl_fireDmg() * (1+global.item11)/2;
			sc_pl_atkEf(fDmg, sc_pl_firePene(), sc_pl_fireShock(), sc_pl_fireMana(), 
				0, 11, 0, sp_pl_itemEf11_1, dir,,,,,,ob_atkEfItem11);
			SE_Play(s_item11_1, global.vol);
		}
		else {
			sc_pl_atkEf(sc_pl_atkDmg(), sc_pl_atkPene(), sc_pl_atkShock(), sc_pl_atkMana(), 
				0, 0, 0, sp_pl_atkEf01, dir);
			SE_Play(s_arrow01, global.vol);
		}
	}
	
	if ( atkProcess == 30 ) {
		if (global.item11) {
			var fDmg = sc_pl_fireDmg() * (1+global.item11)/2;
			sc_pl_atkEf(fDmg, sc_pl_firePene(), sc_pl_fireShock(), sc_pl_fireMana(), 
				0, 11, 0, sp_pl_itemEf11_1, dir,,,,,,ob_atkEfItem11);
			SE_Play(s_item11_1, global.vol);
		}
		else {
			sc_pl_atkEf(sc_pl_atkDmg(), sc_pl_atkPene(), sc_pl_atkShock(), sc_pl_atkMana(), 
				0, 0, 0, sp_pl_atkEf01, dir);
			SE_Play(s_arrow01, global.vol);
		}
	}
	*/
	if ( atkProcess == 12 || atkProcess == 30 ) 
	{
		sc_pl_arrowAtk(1,1);
	}
	/*
	if ( atkProcess == 20 && isAtk3 == 20 ) {
		canMove = 12;
		isAtk3 = 0;
		atkProcess = 0;
	}
	*/
	//대쉬 제어
	//if ( (atkProcess > 16 && atkProcess < 36) || (atkProcess > 0 && atkProcess < 16) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	//}
	sc_pl_skKey();
	if ( (atkProcess > 30) || (atkProcess > 12 && atkProcess < 22) ) {
		sc_pl_atkDnJ();
		sc_pl_atkDnJ();
		sc_pl_skComb();
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 12 )	{ image_index = 1; }
	else if ( atkProcess < 17 )	{ image_index = 2; }
	else if ( atkProcess < 22 )	{
		if ( nextAtk != 1 ) { image_index = 3; }
		else				{ image_index = 4; }
	}
	else if ( atkProcess < 26 )	{ 
		if ( image_index != 3 )	{ image_index = 5; nextAtk = 0; }
		}
	else if ( atkProcess < 30 )	{ 
		if ( image_index == 3 ) { atkProcess = -5; canMove = 0; }
		else					{ image_index = 6; }
	}
		
	else if ( atkProcess < 38 )	{ image_index = 7; }
	else if ( atkProcess < 46 ) { 
		image_index = 8;
		if ( nextAtk == 2 ) { nextAtk = 0; atkProcess = 0; canMove = 2; }
		else if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; }
		else if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 4; }
		else if ( nextAtk == 5 ) { 
			if (isJump)			 { nextAtk = 0; atkProcess = 0; canMove = 5; }
			else				 { nextAtk = 0; atkProcess = 0; canMove = 2; }
		}
		else if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; }
		else if ( nextAtk == 10 ) {
			dProcess = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
		
	}
	else { atkProcess = -15;	canMove = 0; }
}