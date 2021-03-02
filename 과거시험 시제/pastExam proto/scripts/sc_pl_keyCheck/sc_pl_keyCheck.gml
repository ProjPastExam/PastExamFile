function sc_pl_keyCheck() {
	keyLeft			= false;
	keyRight		= false;
	keyJump			= false;
	keyJump2		= false;
	keyAttack		= false;
	keyDown			= false;
	keyDash			= false;
	keyTop			= false;
	keySk1			= false;
	keySk2			= false;

	if ( keyboard_check(vk_left) )				{ keyLeft	= true; }
	if ( keyboard_check(vk_right) )				{ keyRight	= true; }
	if ( keyboard_check(vk_down) )				{ keyDown	= true; }
	if ( keyboard_check(vk_up) )				{ keyTop	= true; }
	if ( keyboard_check( ord("C") ) )			{ keyJump2	= true; }
	if ( keyboard_check_pressed( ord("C") ) )	{ keyJump	= true; }
	if ( keyboard_check_pressed( ord("X") ) )	{ keyAttack = true; }
	if ( keyboard_check_pressed( ord("Z") ) )	{ keyDash	= true; }
	if ( keyboard_check_pressed( ord("A") ) )	{ keySk1	= true; }
	if ( keyboard_check_pressed( ord("S") ) )	{ keySk2	= true; }

}
