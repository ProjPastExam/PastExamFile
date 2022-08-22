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
		
		else if (talkNext == 2) {
			npcInst.talkCnt++;
			npcInst.isTalk = true;
			
			with (ob_roomControl) {
				isTalk			= 2;
				npcFace			= other.npcFace;
				nameS			= other.nameS;
				questionState	= 0;
				questionNum		= other.questionNum;
				questionString	= other.questionStruct;
				isGUI			= false;
			}
			
			with (ob_player) {
				canMove		= -10;
			}
			
			SE_Play(s_talk, global.vol);
		}
		
		else if (talkNext == 3) {
			npcInst.isTalk = true;
			qIndex = 0;
			
			with (ob_roomControl) {
				other.qIndex	= questionState;
			}
			npcInst.talkIndex = nextIndex[qIndex];
			npcInst.talkCnt = 1;
			
			with (ob_roomControl) {
				isTalk		= 1;
				npcFace		= other.npcInst.talkIndex[0].npcFace;
				nameS		= other.npcInst.talkIndex[0].nameS;
				talkString	= other.npcInst.talkIndex[0].talkString;
				isGUI		= false;
			}
			
			with (ob_player) {
				canMove		= -10;
			}
			
			SE_Play(s_talk, global.vol);
		}
		
	}
}