// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage02BossCs2(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var ii = 720;
	var iy = 1540

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 150;
			isTalk = 5;
			break;
			
		case 1:
			var name = "행인 1"
			var text = "구해주셔서 감사해요...";
			sc_csBase(name, sp_npc_blank, text, 1500, iy);
			break;
			
		case 2:
			var name = "행인 2"
			var text = "덕분에 살았소";
			sc_csBase(name, sp_npc_blank, text, 1500, iy);
			break;
			
		case 3:
			var name = "행인 3"
			var text = "어휴, 무서워 죽는줄 알았어요 \n덕분에 마을로 돌아갈 수 있겠네요";
			sc_csBase(name, sp_npc_blank, text, 1500, iy);
			break;
			
		case 4:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 5:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}