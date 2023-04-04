/// @description Insert description here
// You can write your code in this editor
if (sc_getKey(global.btInter, global.gpInter)) {
	room_goto(r_main);
}
if (sc_getKey(global.btEsc, global.gpEsc)) {
	game_end();
}