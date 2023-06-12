/// @description Insert description here
// You can write your code in this editor
with (ob_settingControl) { other.settingIndex = settingIndex; }
state = false;
image_index = global.lan;
if (settingIndex == 26) {
	state = true;
	if (sc_getKey(global.btInter, gp_face4, 0)) {
		room_goto(global.roomBuffer);
	}
}