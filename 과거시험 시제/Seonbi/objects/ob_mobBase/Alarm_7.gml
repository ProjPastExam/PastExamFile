/// @description 도트뎀용
// You can write your code in this editor

var soundEf = false;
if (atkDot > 0) 
{
	atkDot--;
	hp -= sc_pl_atkDmg(0);
	soundEf = true;
	part_particles_create( global.hitEf, x, y+hitLot, global.hitEf02T, 1 );
	
	var dmgId = instance_create_layer(x-15 , bbox_top - 50, "effect", ob_mobDmg);
	dmgId.dmg = sc_pl_atkDmg(0);
	dmgId.colo = 0;
	dmgId.isCt = false;
	
	global.comCt++;
	
	alarm[7] = 30;
}
if (kickDot > 0) 
{
	kickDot--;
	hp -= sc_pl_kickDmg(0);
	soundEf = true;
	part_particles_create( global.hitEf, x, y+hitLot, global.hitEf_k01, 1 );
	
	var dmgId = instance_create_layer(x, bbox_top - 50, "effect", ob_mobDmg);
	dmgId.dmg = sc_pl_kickDmg(0);
	dmgId.colo = 1;
	dmgId.isCt = false;
	
	global.comCt++;
	
	alarm[7] = 30;
}
if (fireDot > 0) 
{
	fireDot--;
	hp -= sc_pl_fireDmg(0);
	soundEf = true;
	part_particles_create( global.hitEf, x, y+hitLot, global.hitEf_f01, 1 );
	
	var dmgId = instance_create_layer(x + 15, bbox_top - 50, "effect", ob_mobDmg);
	dmgId.dmg = sc_pl_fireDmg(0);
	dmgId.colo = 2;
	dmgId.isCt = false;
	
	global.comCt++;
	
	alarm[7] = 30;
}
if (soundEf)
{
	SE_Play(s_dotdam, global.vol);
}
if (hp < 0)	
{
	atkDot	= 0;
	kickDot	= 0;
	fireDot	= 0;
}