// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function talkStruct(_talkString = "", _nameS = other.nameS, _npcFace = other.npcFace, _talkNext = 0, _nextIndex = -1, _questionNum = 0, _questionStruct = 0) constructor{
	talkString		= _talkString;
	talkNext		= _talkNext;
	nextIndex		= _nextIndex;
	questionNum		= _questionNum;
	questionStruct	= _questionStruct;
	npcFace			= _npcFace;
	nameS			= _nameS;
	npcInst			= other;
	
	talkFunction	= function() {
		if (talkNext == 0) {
			npcInst.talkCnt++;
			npcInst.isTalk = true;
			
			with (ob_roomControl) {
				isTalk		= 1;
				npcFace		= other.npcFace;
				nameS		= other.nameS;
				talkString	= other.talkString;
				isGUI		= false;
			}
			
			with (ob_player) {
				canMove		= -10;
			}
			
			SE_Play(s_talk, global.vol);
			
		}
		
		else if (talkNext == 1) {
			npcInst.talkIndex = nextIndex;
			npcInst.talkCnt	= 0;
			npcInst.isTalk	= false;
			
			with (ob_roomControl) {
				isGUI		= true;
				isTalk		= 0;
			}
			with (ob_player) {
				canMove		= 0;
			}
			
		}
		
	}
}