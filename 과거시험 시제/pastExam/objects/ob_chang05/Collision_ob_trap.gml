/// @description Insert description here
// You can write your code in this editor
if ( hitAfter == 0 ) {
	var calDmg = 5+hpFull/30;
	var dmgId = instance_create_layer(x, bbox_top - 50, "effect", ob_mobDmg);
	dmgId.dmg = calDmg;
	dmgId.colo = 1;
	hp -= calDmg;
	
	ad = true;
	patrol = true;
	
	SE_Play(s_hit01, global.vol);

	if ( dir == -1 )	{
		part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
		//hitDir = -1;
		//dir = 1;
	}
	else			{
		part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
		//hitDir = 1;
		//dir = -1;
	}
	part_type_color3(global.hitEf01T, c_white, c_yellow, c_black);

	part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
	part_type_orientation( global.hitEf_k01, 0, 360, 0, 0, 0 );
	part_particles_create( global.hitEf, x, y, global.hitEf_k01, 1 );

	hitAfter = 15;

}