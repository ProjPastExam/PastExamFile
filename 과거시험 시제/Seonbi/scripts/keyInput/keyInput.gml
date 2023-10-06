// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_getKey(_keyboard, _gamepad, _mode = 0){
	if (global.isMobile && _keyboard == global.btInter && global.mbInter)
	{
		return true;
	}
	var slot = global.gamepadSlot;
	if (_mode == 0) {
		if (keyboard_check_pressed(_keyboard))				return true;
		if (gamepad_button_check_pressed(slot, _gamepad))	return true;
		return false;
	}
	else if (_mode == 1) {
		if (keyboard_check(_keyboard))				return true;
		if (gamepad_button_check(slot, _gamepad))	return true;
		return false;
	}
}


function sc_getPadSlot() {
	var j = gamepad_get_device_count();
	global.gamepadSlot = -1;
	for (var i = 0; i < j; i++) {
		if (gamepad_is_connected(i)) {
			global.gamepadSlot = i;
			break;
		}
	}

}

function sc_mobileKey(_index)
{

	
}