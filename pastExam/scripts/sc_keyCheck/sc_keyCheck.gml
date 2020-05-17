//PC용 키 채크 스크립트
//프로젝트 과거시험
//작성자 : 이시온
//스탭 실행 스크립트

//////////////////////////////////////////////////////////////////////////////////////////

keyLeft			= false;
keyRight		= false;
keyJump			= false;
keyAttack		= false;
keyDown			= false;
keyLeftDash		= false;
keyRightDash	= false;

//if ( keyboard_check_released(vk_left) )		{ keyLeftDash = false; }
//if ( keyboard_check_released(vk_right) )	{ keyRightDash = false; }

if ( keyboard_check(vk_left) )				{ keyLeft	= true; }
if ( keyboard_check(vk_right) )				{ keyRight	= true; }
if ( keyboard_check(vk_down) )				{ keyDown	= true; }
if ( keyboard_check_pressed( ord("C") ) )	{ keyJump	= true; }
if ( keyboard_check_pressed( ord("X") ) )	{ keyAttack = true; }


if ( keyboard_check_pressed(vk_left) ) {
	if ( keyDbClickL >= 0 ) {
		keyLeftDash = true;
		keyDbClickL= -1;
	}
	else
		keyDbClickL = 15;
}

if ( keyboard_check_pressed(vk_right) ) {
	if ( keyDbClickR >= 0 ) {
		keyRightDash = true;
		keyDbClickR = -1;
	}
	else
		keyDbClickR = 15;
}

keyDbClickL = max ( keyDbClickL - 1, -1 );
keyDbClickR = max ( keyDbClickR - 1, -1 );