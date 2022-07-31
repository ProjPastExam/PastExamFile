// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_getItem(){
	if (global.itemSum < global.itemNum) {
		global.itemGet[global.itemSum] = global.itemData[itemNum];
		global.itemGet[global.itemSum].itemBuff = itemBuff;
		global.itemGet[global.itemSum].itemKind = itemKind;
		
		global.itemSum++;
		with ( ob_player ) {
			itemCheck = true;
		}
		return true;
	}
	else {
		return false;
	}
}

function sc_getSk() {
	if (global.sk1 == 0) {
		global.sk1 = skNum;
		return true;
	}
	else if (global.sk2 == 0) {
		global.sk2 = skNum;
		return true;
	}
	else if (global.sk3 == 0) {
		global.sk3 = skNum;
		return true;
	}
	else {
		with (ob_player) {
			alarm[3] = 3;
		}
		
		isDelete = true;
		
		with (ob_roomControl) {
			sc_gameRoom(r_tabDeleteSk);
		}
		return false;
	}
}