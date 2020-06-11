/// @description Insert description here
// You can write your code in this editor

if ( ob_game.atkShake && shake ) {
	uc_shake(5,0.5);
	shake = false;
}


image_alpha -= 0.08;

if ( image_alpha <= 0 ) {
	ob_game.atkShake = false;
	instance_destroy();
}
