/// @description Insert description here
// You can write your code in this editor
sprite_index = sp_bandit01_die;
image_index = 0;
process = 0;
SE_Play(s_bandit01die1, global.vol);
SE_Play(s_hit01, global.vol);
die = true;
with (instance_create_layer(x, y, "effect", ob_csEffect)) {
	sprite_index = sp_hitEffect_kick01;
}
uc_shake(8, 0.1);