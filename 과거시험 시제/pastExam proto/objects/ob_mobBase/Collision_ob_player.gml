/// @description 플레이어와 충돌
// You can write your code in this editor
if (hp > 0 && !isJump && ob_player.ySpeed >= 0 && ob_player.bbox_bottom > y) {
	
	var plX = ob_player.x;

	var vol = abs(bbox_right - bbox_left)/2;
	var plVol = abs(ob_player.bbox_right - ob_player.bbox_left)/2;
	
	var spd = (vol + plVol) - abs(x - plX);

	/*
	xSpeed = spDir * spd;
	ob_player.xSpeed = -1* spDir * spd;
	*/
	
	
	if (plX > x) {
		if (ob_player.xSpeed <= 0) ob_player.xSpeed = spd;
	}
	else {
		if (ob_player.xSpeed >= 0) ob_player.xSpeed = -spd;
	}
	
}
