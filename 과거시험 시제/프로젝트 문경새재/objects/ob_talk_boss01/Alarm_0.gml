/// @description Insert description here
// You can write your code in this editor
if (p == 1) {
	ob_mobBandit01.state = 32;
	ob_mobBandit01.dir = -1;
	ob_BossBandit01.dir = -1;
	ob_BossBandit01.image_xscale = -1;
}

if (p == 3) {
	show = false;
	ob_mobBandit01.state = 10;
	ob_BossBandit01.state = 11;
	ob_player.canMove = 0;
	instance_destroy();
}
alarm[0] = 1;