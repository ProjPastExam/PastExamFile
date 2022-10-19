/// @description Insert description here
// You can write your code in this editor

if (state > 6 && isNext) {
	isNext = false;
	alarm[1] = 120;
	BGM_Stop(90);
}

if (sc_getKey(global.btEsc, global.gpEsc, 0) && isNext) {
	state = 7;
	isNext = false;
	alarm[1] = 120;
	BGM_Stop(90);
}

for ( var i = gp_face1; i < gp_axisrv; i++ ) {
    if ( gamepad_button_check_pressed( global.gamepadSlot, i ) && isNext ) {
		state += 1;
		SE_Play(s_talk, global.vol);
	}
}