/// @description Insert description here
// You can write your code in this editor
sc_steam_update();

for ( var i = gp_face1; i < gp_axisrv; i++ ) {
    if ( gamepad_button_check( global.gamepadSlot, i ) && !isActive ) {
		isActive = true;
		alarm[3] = 1;
		alarm[5] = 60;
	}
}