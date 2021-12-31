/// @description 플레이어와 충돌
// You can write your code in this editor

if (hp > 0 && !isJump && ob_player.ySpeed >= 0 && ob_player.bbox_bottom > y) {
	
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
