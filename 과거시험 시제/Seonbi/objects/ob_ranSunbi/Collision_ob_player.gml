/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
isCollision = true;


if (sc_getKey(global.btInter, global.gpInter, 0)) {
	isTalk = true;
	talkIndex[talkCnt].talkFunction();
	//talkIndex[talkCnt].talkString;
	if (isActive)
	{
		isActive = false;
		global.seonBuff[bIndex]++;
	}
}



