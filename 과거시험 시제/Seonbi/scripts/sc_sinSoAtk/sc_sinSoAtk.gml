// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_sinSoAtk(){
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	if ( state == 14 ) {
		sprite_index = sp_sinSo_spawn;
	}
	if ( state == 15 ){
		process++;
		sprite_index = sp_sinSo_stand;
		
		if (process > 80)
		{
			state = 16;
			image_index = 0;
		}
	}
	else if ( state == 16 ) {
		sprite_index = sp_sinSo_atk;
	}
	else if ( state == 17 ) {
		SE_Play(s_swing_b1, global.vol);
		var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
		ob.image_xscale = dir;
		ob.sprite_index = sp_sinSo_atkEf;
		instance_destroy();
	}

}