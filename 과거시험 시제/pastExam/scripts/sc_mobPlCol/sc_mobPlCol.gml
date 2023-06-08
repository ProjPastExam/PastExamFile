// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_mobPlCol(){
	if (hp > 0 && global.hp > 0) {
		with (ob_player)
		{
			if (ySpeed < 0 || bbox_bottom <= other.y || !mobCol) return;
		}
		var plX = ob_player.x;
		var spd = 0;
	
		var vol = abs(bbox_right - bbox_left)/2;
		var plVol = abs(ob_player.bbox_right - ob_player.bbox_left)/2;
		
		if ((vol + plVol) < abs(x - plX)) return;
		else if (((vol + plVol) - abs(x - plX)) < 5) spd = 0;
		else spd = ((vol + plVol) - abs(x - plX)) - 5;
	
		var sqd = spd;
		if (sqd > 10) sqd = 10;
		
		if (plX > x) {
			//if (ob_player.xSpeed <= 0) ob_player.mobAcc = spd;
			ob_player.mobAcc = spd;
			//ob_player.x += spd;
		}
		else {
			//if (ob_player.xSpeed >= 0) ob_player.mobAcc = -spd;
			ob_player.mobAcc = -spd;
			//ob_player.x -= spd;
		}
		
	}
}