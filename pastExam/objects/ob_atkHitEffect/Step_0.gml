/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.08;

if ( image_alpha <= 0 ) {
	ob_game.atkShake = false;
	instance_destroy();
}
