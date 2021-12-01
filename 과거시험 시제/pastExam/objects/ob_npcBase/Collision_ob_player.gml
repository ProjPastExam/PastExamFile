/// @description Insert description here
// You can write your code in this editor
isCollision = true;

if (keyboard_check_pressed(vk_up) && instance_exists(ob_roomControl) && sc_pl_get("canMove") == 0) {
	ob_roomControl.isTalk = 1;
	ob_roomControl.talkNum = talkLine[talkCnt];
	ob_roomControl.nameS = nameS;
	ob_roomControl.npcFace = npcFace;
	array_copy(ob_roomControl.talkArray, 0, talk[talkCnt], 0, talkLine[talkCnt]);
	if (talkCnt < talkNum-1) talkCnt++
}