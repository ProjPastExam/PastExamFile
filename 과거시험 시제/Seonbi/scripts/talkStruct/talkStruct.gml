// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function talkStruct(_hor = 0, _ver = 0, _nameVer = 1, _npcFace = other.npcFace, 
					_talkNext = 0, _nextIndex = -1, _questionNum = 0, _questionStruct = 0
					) constructor{
	talkNext		= _talkNext;
	nextIndex		= _nextIndex;
	questionNum		= _questionNum;
	questionString	= _questionStruct;
	npcFace			= _npcFace;

	npcInst			= other;
	
	nameS			= array_create(2);
	nameS[0]		= sc_csvToString(other.textFile, 0, _nameVer);
	nameS[1]		= sc_csvToString(other.textFile, 1, _nameVer);
	
	talkString		= array_create(2);
	talkString[0]	= sc_csvToString(other.textFile, _hor, _ver);
	talkString[1]	= sc_csvToString(other.textFile, _hor+1, _ver);
	
	talkFunction	= function() {
		if (talkNext == 0) {
			npcInst.talkCnt++;
			npcInst.isTalk = true;
			
			with (ob_roomControl) {
				isTalk		= 1;
				npcFace		= other.npcFace;
				nameS		= other.nameS[global.lan];
				talkString	= other.talkString[global.lan];
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
				nameS			= other.nameS[global.lan];
				questionState	= 0;
				questionNum		= other.questionNum;
				questionString	= other.questionString;
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
				nameS		= other.npcInst.talkIndex[0].nameS[global.lan];
				talkString	= other.npcInst.talkIndex[0].talkString[global.lan];
				isGUI		= false;
			}
			
			with (ob_player) {
				canMove		= -10;
			}
			
			SE_Play(s_talk, global.vol);
		}
		

	}
}

function questionStruct(_hor = 0, _ver = 0) constructor
{
	talkString		= array_create(2);
	talkString[0]	= sc_csvToString(other.textFile, _hor, _ver);
	talkString[1]	= sc_csvToString(other.textFile, _hor+1, _ver);
}