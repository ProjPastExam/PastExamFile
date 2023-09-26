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
	keySkDown		= false;
	
	var axisH =  gamepad_axis_value(global.gamepadSlot, gp_axislh);
	var axisV =  gamepad_axis_value(global.gamepadSlot, gp_axislv);
	
	if ( sc_getKey(global.btLeft, global.gpLeft, 1) || axisH < -0.4 || mbLeft )		
		{ keyLeft	= true; }
	if ( sc_getKey(global.btRight, global.gpRight, 1) || axisH > 0.4 || mbRight )		
		{ keyRight	= true; }
	if ( sc_getKey(global.btDown, global.gpDown, 1) || axisV > 0.4 || mbDown)		
		{ keyDown	= true; }
	if ( sc_getKey(global.btUp, global.gpUp, 1) || axisV < -0.4 || mbUp)			
		{ keyTop	= true; }
		
	if ( sc_getKey(global.btJump, global.gpJump, 1) )	{ keyJump2	= true; }
	if ( sc_getKey(global.btJump, global.gpJump, 0) )	{ keyJump	= true; }
	if ( sc_getKey(global.btAtk, global.gpAtk, 0) || mbAtk)		{ keyAttack = true; }
	if ( sc_getKey(global.btAtk, global.gpAtk, 1) || mbAtk2)	{ keyAttack2 = true; }
	if ( sc_getKey(global.btDash, global.gpDash, 0) )	{ keyDash	= true; }
	if ( sc_getKey(global.btSk1, global.gpSk1, 0) )		{ keySk1	= true; }
	if ( sc_getKey(global.btSk2, global.gpSk2, 0) )		{ keySk2	= true; }
	if ( sc_getKey(global.btSk3, global.gpSk3, 0) )		{ keySk3	= true; }
	if ( sc_getKey(global.btSk1, global.gpSk1, 1) )		{ keySkDown	= true; }
	if ( sc_getKey(global.btSk2, global.gpSk2, 1) )		{ keySkDown	= true; }
	if ( sc_getKey(global.btSk3, global.gpSk3, 1) )		{ keySkDown	= true; }
	
	
}
