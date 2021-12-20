function sc_pl_keyCheck() {
	keyLeft			= false;
	keyRight		= false;
	keyJump			= false;
	keyJump2		= false;
	keyAttack		= false;
	keyAttack2		= false;
	keyDown			= false;
	keyDash			= false;
	keyTop			= false;
	keySk1			= false;
	keySk2			= false;
	keySk3			= false;

	if ( keyboard_check(global.btLeft) )			{ keyLeft	= true; }
	if ( keyboard_check(global.btRight) )			{ keyRight	= true; }
	if ( keyboard_check(global.btDown) )			{ keyDown	= true; }
	if ( keyboard_check(global.btUp) )				{ keyTop	= true; }
	if ( keyboard_check(global.btJump) )			{ keyJump2	= true; }
	if ( keyboard_check_pressed(global.btJump) )	{ keyJump	= true; }
	if ( keyboard_check_pressed(global.btAtk) )		{ keyAttack = true; }
	if ( keyboard_check(global.btAtk) )				{ keyAttack2 = true; }
	if ( keyboard_check_pressed(global.btDash) )	{ keyDash	= true; }
	if ( keyboard_check_pressed(global.btSk1) )		{ keySk1	= true; }
	if ( keyboard_check_pressed(global.btSk2) )		{ keySk2	= true; }
	if ( keyboard_check_pressed(global.btSk3) )		{ keySk3	= true; }
	
	
}
