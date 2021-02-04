/// @description Insert description here
// You can write your code in this editor
pause = 0;
slow = 0;
alarm[0] = 1;


GUIX = 50;
GUIY = 50;

mobNum = 1;
alarm[5] = 10;

//파티클 시스템
{
global.hitEf = part_system_create_layer("effect", true);
//몹, 플레이어 피격 이팩트 파티클 시스템

global.hitEf2 = part_system_create_layer("effect2", true);
//플레이어 후면 이팩트

//몹 피격시 의지 날림 효과
global.hitEf01T = part_type_create();
var e01	= global.hitEf01T;

//part_type_color1( e01, c_red );
part_type_shape( e01, pt_shape_square );
part_type_size( e01, 0.2, 0.2, -0.008, 0 );
part_type_gravity( e01, 0.4, 270 );
part_type_speed( e01, 15, 25, -0.5, 0 );
part_type_color1(e01, c_white);


//일반공격 피격시 타격감 효과
global.hitEf02T = part_type_create();
var e02	= global.hitEf02T;

part_type_sprite( e02, sp_hitEffect01, true, true, false );
part_type_life( e02, 20, 20 );


//플레이어 피격시 타격감 효과
global.hitEf04T = part_type_create();
var e04	= global.hitEf04T;

part_type_sprite( e04, sp_plHitEffect01, true, true, false );
part_type_life( e04, 20, 20 );
}