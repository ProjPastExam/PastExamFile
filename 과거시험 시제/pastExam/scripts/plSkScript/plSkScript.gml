// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_skComb(){
	if ( nextAtk == -1 && global.mp >= global.skMp[global.sk1] && global.skKul[0] == 0 ) 
		{ nextAtk = 0; atkProcess = 0; canMove = global.sk1; skState = 0; }
	if ( nextAtk == -2 && global.mp >= global.skMp[global.sk2] && global.skKul[1] == 0) 
		{ nextAtk = 0; atkProcess = 0; canMove = global.sk2; skState = 1; }
	if ( nextAtk == -3 && global.mp >= global.skMp[global.sk3] && global.skKul[2] == 0) 
		{ nextAtk = 0; atkProcess = 0; canMove = global.sk3; skState = 2; }
}

function sc_pl_skDir() {
	if (atkProcess == 1) {
		if (keyLeft)		dir = -1;
		else if (keyRight)	dir = 1;
	}
}

function sc_pl_skKey() {
	if ( keySk1 ) nextAtk = -1;
	if ( keySk2 ) nextAtk = -2;
	if ( keySk3 ) nextAtk = -3;
}

function sc_pl_skRepeat(skIndex) {
	var com = false;
	if ( nextAtk == 1 ) { nextAtk = 0; atkProcess = 0; canMove = 1; }
	else if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; }
	else if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 4; }
	else if ( nextAtk == 5 ) { nextAtk = 0; atkProcess = 0; canMove = 5; }
	else if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; }
	if ( nextAtk == -1 && global.mp >= global.skMp[global.sk1]) {
		if (global.sk1 == skIndex)			{com = true;}
		else if (global.skKul[0] == 0)	{nextAtk = 0; atkProcess = 0; canMove = global.sk1; skState = 0;}
	}
	if ( nextAtk == -2 && global.mp >= global.skMp[global.sk2] ) {
		if (global.sk2 == skIndex)			{com = true;}
		else if	(global.skKul[1] == 0)	{nextAtk = 0; atkProcess = 0; canMove = global.sk2; skState = 1;}
	}
	if ( nextAtk == -3 && global.mp >= global.skMp[global.sk3])  {
		if	(global.sk3 == skIndex)			{com = true;}
		else if	(global.skKul[1] == 0)	{nextAtk = 0; atkProcess = 0; canMove = global.sk3; skState = 2;}
	}
	
	return com;
	nextAtk = 0;
}

function sc_pl_comAfterSk() {
	if ( nextAtk == 1 ) { nextAtk = 0; atkProcess = 0; canMove = 1; }
	else if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; }
	else if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 4; }
	else if ( nextAtk == 5 ) { nextAtk = 0; atkProcess = 0; canMove = 5; }
	else if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; }
	else if ( nextAtk == 10 ) {
		dProcess = 0;
		canMove = 10;
		atkProcess = -1;
		if ( keyRight ) dir = 1;
		if ( keyLeft ) dir = -1
	}
}