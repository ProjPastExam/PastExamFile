/// @description Insert description here
// You can write your code in this editor
with (ob_settingControl) { other.settingIndex = settingIndex; }
state = false;
image_index = global.lan;
if (settingIndex == 25) {
	state = true;
	if (sc_getKey(global.btInter, gp_face4, 0)) {
		global.gameEnd = true;
		room_goto(global.roomBuffer);
	}
}	