// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk156(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	canJump = true;
	image_xscale = dir;
	sprite_index = sp_pl_sk156;
	var atk;
	
	if ( atkProcess > 6 ) {
		sc_pl_comInter();
		sc_pl_skKey();
	}
	sc_pl_skDir(61);
	if ( atkProcess == 20 ) {
		SE_Play(s_jpBoss_atk1_1, global.vol);
		atk = sc_pl_atkEf(sc_pl_kickDmg()*3, sc_pl_kickPene(), sc_pl_kickShock(), 0, 
			0, 1, 0, sp_pl_sk156Ef1, dir);
		sc_pl_kulNMana(156, 2);
		atk.dmgScale = 1.5;
	}
	
	if ( atkProcess == 76 ) {
		SE_Play(s_jpBoss_atk1_2, global.vol);
		atk = sc_pl_atkEf(sc_pl_kickDmg()*3, sc_pl_kickPene(), sc_pl_kickShock(), 0, 
			0, 1, 4, sp_pl_sk156Ef2, dir);
		sc_pl_kulNMana(156, 2);
	}
	
	//대쉬 제어
	if ( (atkProcess > 10 ) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	
	
	if ( atkProcess < 4 )		{ image_index = 0; }
	else if ( atkProcess < 8 )	{ image_index = 1; }
	else if ( atkProcess < 12 )	{ image_index = 2; }
	else if ( atkProcess < 20 )	{ image_index = 2;	xSpeed = 50*dir;	ySpeed = 0; }
	else if ( atkProcess < 25 )	{ image_index = 3;	ySpeed = 0; }
	else if ( atkProcess < 40 )	{ image_index = 4; }
	else if ( atkProcess < 50 )	{ image_index = 4; if (sc_pl_skRepeat(156)) atkProcess = 60;}
	else if ( atkProcess < 57 ) { canMove = 0;	atkProcess = -5; }
	
	if ( atkProcess < 60 )		{ }
	else if ( atkProcess < 64 )	{ image_index = 5;	nextAtk = 0; }
	else if ( atkProcess < 68 )	{ image_index = 6; }
	else if ( atkProcess < 76 )	{ image_index = 6;	xSpeed = 50*dir;	ySpeed = 0; }
	else if ( atkProcess < 80 )	{ image_index = 7;	ySpeed = 0; }
	else if ( atkProcess < 85 )	{ image_index = 8; }
	else if ( atkProcess < 90 ) { image_index = 9; }
	else if ( atkProcess < 120 ) { image_index = 10;	sc_pl_comAfterSk();	sc_pl_skComb(); }
	else						{ canMove = 0;	atkProcess = -5; }
	
	
	if ( (atkProcess > 10 ) ) 
	{ 
		sc_pl_atkDnJ(); 
		//sc_pl_comAfterSk();
		//sc_pl_skComb();
	}
	
}

/*
function sc_pl_sk103_com() {
	var com = false;
	if ( nextAtk == 1 ) { nextAtk = 0; atkProcess = 0; canMove = 1; global.skKul[skState] = global.skKulData[103]; }
	else if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; global.skKul[skState] = global.skKulData[103];}
	else if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 4; global.skKul[skState] = global.skKulData[103];}
	else if ( nextAtk == 5 ) { nextAtk = 0; atkProcess = 0; canMove = 5; global.skKul[skState] = global.skKulData[103]; }
	else if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; global.skKul[skState] = global.skKulData[103]; }
	if ( nextAtk == -1 && global.mp >= global.skMp[global.sk1]) {
		if (global.sk1 == 103)			{com = true;}
		else if (global.skKul[0] == 0)	{nextAtk = 0; atkProcess = 0; canMove = global.sk1; skState = 0;}
	}
	if ( nextAtk == -2 && global.mp >= global.skMp[global.sk2] ) {
		if (global.sk2 == 103)			{com = true;}
		else if	(global.skKul[1] == 0)	{nextAtk = 0; atkProcess = 0; canMove = global.sk2; skState = 1;}
	}
	if ( nextAtk == -3 && global.mp >= global.skMp[global.sk3])  {
		if								(global.sk3 == 103)	{com = true;}
		else if	(global.skKul[1] == 0)	{nextAtk = 0; atkProcess = 0; canMove = global.sk3; skState = 2;}
	}
	
	if (com) {
		if (atkProcess < 40) atkProcess = 40;
		else if (atkProcess < 80) atkProcess = 80;
	}
	nextAtk = 0;
}
*/