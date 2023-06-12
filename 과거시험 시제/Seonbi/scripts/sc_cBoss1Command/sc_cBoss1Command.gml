// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_cBoss1Command(num){
	var index = irandom_range(0, 2);
	
	var spawnX = uc_get_x();
	var spawnY = y-100;
	var spawnDir = dir;
	
	if (num == 1) {
		spawnX -= 1000*dir;
	}
	else {
		spawnX += 1000*dir;
		spawnDir = dir*-1;
	}
	
	var plX = sc_pl_get("x");
	
	var spawnXSpeed = abs((spawnX - plX)/60);
	if (spawnXSpeed < 9) spawnXSpeed = 9;
	spawnXSpeed += random_range(-1.5, 1.5)
	var spawnYSpeed = -10;
	
	if (index == 0) {
		SE_Play(s_chang_atk1, global.vol);
		var ob = instance_create_layer(spawnX, spawnY, "effect2", ob_cB1Command1);
		ob.dir = spawnDir;
		ob.xSpeed = spawnXSpeed*spawnDir;
		ob.ySpeed = spawnYSpeed;
	}
	else if (index == 1) {
		SE_Play(s_chang_atk2, global.vol);
		var ob = instance_create_layer(spawnX, spawnY, "effect2", ob_cB1Command2);
		ob.dir = spawnDir;
		ob.xSpeed = spawnXSpeed*spawnDir;
		ob.ySpeed = spawnYSpeed;
	}
	else if (index == 2) {
		SE_Play(s_chang_atk3, global.vol);
		var ob = instance_create_layer(spawnX, spawnY, "effect2", ob_cB1Command3);
		ob.dir = spawnDir;
		spawnXSpeed -= 4;
		if (spawnXSpeed < 9) spawnXSpeed = 9;
		ob.xSpeed = spawnXSpeed*spawnDir;
		ob.ySpeed = spawnYSpeed;
	}
}