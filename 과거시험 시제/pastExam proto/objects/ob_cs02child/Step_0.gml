/// @description Insert description here
// You can write your code in this editor
function sc_cs02(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 4) x = x - 5;
	
	
	if (active) {
		switch (state) {
		case 4:
			visible = true;
			active = false;
			break;
		}
	}
}