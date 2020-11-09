/// @description Insert description here
// You can write your code in this editor

//particle 설정

global.hpMax	= 5;
global.hp		= global.hpMax;

global.mpMax	= 50;
global.mp		= 0;

global.itemNum	= 0;
global.atkDmg	= array_create(6, 0);

global.atkDmg	= 10;

{
global.hitEf = part_system_create_layer("effect", true);
//몹, 플레이어 피격 이팩트 파티클 시스템

global.hitEf2 = part_system_create_layer("effect2", true);
//플레이어 후면 이팩트


global.hitEf01T = part_type_create();
var e01	= global.hitEf01T;
//몹 피격시 의지 날림 효과

//part_type_color1( e01, c_red );
part_type_shape( e01, pt_shape_disk );
part_type_size( e01, 0.2, 0.4, -0.02, 0 );
part_type_gravity( e01, 0.2, 270 );
part_type_speed( e01, 15, 25, -0.5, 0 );


global.hitEf02T = part_type_create();
var e02	= global.hitEf02T;
//일반공격 피격시 타격감 효과

part_type_sprite( e02, sp_hitEffect01, true, true, false );
part_type_life( e02, 20, 20 );

/*
global.hitEf03T = part_type_create();
var e03	= global.hitEf03T;
//플레이어 피격시 의지 날림 효과

part_type_shape( e03, pt_shape_sphere );
part_type_size( e03, 0.6, 1, -0.02, 0 );
part_type_gravity( e03, 0.2, 270 );
part_type_speed( e03, 10, 20, -0.5, 0 );


global.hitEf04T = part_type_create();
var e04	= global.hitEf04T;
//플레이어 피격시 타격감 효과

part_type_sprite( e04, sp_plHitEffect01, true, true, false );
part_type_life( e04, 20, 20 );


global.hitEf05T = part_type_create();
var e05	= global.hitEf05T;
//버섯 피격시 의지 날림 효과

part_type_shape( e05, pt_shape_sphere );
part_type_size( e05, 0.6, 1, -0.02, 0 );
part_type_gravity( e05, 0.2, 270 );
part_type_speed( e05, 15, 25, -0.5, 0 );
part_type_color1( e05, $FFFC7F );


global.hitEf06T = part_type_create();
var e06	= global.hitEf06T;
//버섯 의지 잔상

part_type_sprite( e06, sp_energyEffect01, false, false, false );


global.hitEf07T = part_type_create();
var e07	= global.hitEf07T;
//버섯 효과

part_type_sprite( e07, sp_energyEffect01, false, false, false );
part_type_size( e07, 0.5, 0.8, -0.006, 0 );
part_type_speed( e07, 1.2, 1.8, -0.01, 0 );
part_type_direction( e07, 90, 90, 0, 0 );


global.hitEf08T = part_type_create();
var e08	= global.hitEf08T;
//기모으기 지속효과

part_type_shape( e08, pt_shape_explosion );
part_type_size( e08, 1.2, 1.6, -0.03, -0.001 );
part_type_gravity( e08, 0.15, 90 );
part_type_speed( e08, 0.4, 0.8, 0, 0 );
part_type_direction( e08, 0, 359, 0, 0);
part_type_color1( e08, $FFFC7F );


global.hitEf09T = part_type_create();
var e09	= global.hitEf09T;
//기모으기 효과

part_type_sprite( e09, sp_loadEffect, true, true, false );
part_type_life( e09, 20, 20 );
*/
}