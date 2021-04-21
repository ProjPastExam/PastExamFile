/// @description Insert description here
// You can write your code in this editor
if (hp > 0) {
	var ex = instance_create_layer(x, y, "effect", ob_atkEf05);
	ex.sprite_index = sp_hitEffect_sin;
	ex.damage = 60;
	ex.shock = 30;
	instance_destroy(ob_sinEf01);
}
