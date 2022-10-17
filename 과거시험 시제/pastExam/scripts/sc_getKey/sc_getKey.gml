// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_getKey(_keyboard, _gamepad, _mode = 0){
	if (_mode == 0) {
		if (keyboard_check_pressed(_keyboard))			return true;
		if (gamepad_button_check_pressed(0, _gamepad))	return true;
		return false;
	}
	else if (_mode == 0) {
		if (keyboard_check(_keyboard))			return true;
		if (gamepad_button_check(0, _gamepad))	return true;
		return false;
	}
}
