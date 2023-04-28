/// @description Insert description here
// You can write your code in this editor
var cX = uc_get_view_width()/2 + 20;

for (var i = 0; i < mobNum[pace]; i++) {
	var tempX = 0;
	var tempSpd = 10;
	
	if (object_get_parent(mobStack[pace][i]) == ob_mobBase) {
		if (i == 0) {
			tempX = x+cX;
			tempSpd = -10;
		}
		else if (i == 1) {
			tempX = x+cX+100;
			tempSpd = -10;
		}
		else if (i == 2) {
			tempX = x+cX+200;
			tempSpd = -10;
		}
		else if (i == 3) {
			tempX = x-cX;
		}
		else if (i == 4) {
			tempX = x-cX-100;
		}
		else if (i == 5) {
			tempX = x-cX-200;
		}
		
		var mob = instance_create_layer(tempX, bbox_bottom - spawnY, "Instances", mobStack[pace][i])
		mob.state = 10;
		mob.ad = true;
		mob.delay = 50
		mob.isJump = true;
		mob.xSpeed = tempSpd;
	}
}

alarm[2] = term;
alarm[3] = 30;
alarm[4] = 30;
isTemp = false;
isTerm = false;
pace++;

