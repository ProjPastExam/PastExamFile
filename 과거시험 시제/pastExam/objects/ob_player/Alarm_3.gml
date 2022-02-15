/// @description 아이템 및 기술 중복 시 버린 아이템 생성 코드
// You can write your code in this editor

if (global.tabDeleteIs == 1) {
	with (instance_create_depth(x, y, 0, ob_sk)) {
		isRand = false;
		//isNew = true;
		skNum = global.tabDeleteIndex;
	}
}

global.tabDeleteIs = 0
global.tabDeleteIndex = 0;
