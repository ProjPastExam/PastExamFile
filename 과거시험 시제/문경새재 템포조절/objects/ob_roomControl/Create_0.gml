/// @description Insert description here
// You can write your code in this editor
pause = 0;
slow = 0;
alarm[0] = 1;

talkX	= 0;
talkY	= 0;
talkZ	= 0;

mobNum = 1;
alarm[5] = 10;

alarm[6] = 1;
room_speed = 60;

nameS = "";
talkArray = array_create(20);
talkNum = 0;
talkCnt = 0;

cmMode = 0;

if (isCt) isTalk = 4;

//스킬 UI 설정
{
skUi = array_create(300, sp_skillUi_0);
skUi[0] = sp_skillUi_0;
skUi[100] = sp_skillUi_101;
skUi[101] = sp_skillUi_101;
skUi[102] = sp_skillUi_101;
skUi[103] = sp_skillUi_101;

}
//파티클 시스템

{
global.hitEf = part_system_create_layer("effect", true);
//몹, 플레이어 피격 이팩트 파티클 시스템

global.hitEf2 = part_system_create_layer("effect2", true);
//플레이어 후면 이팩트

//몹 피격시 의지 날림 효과
global.hitEf01T = part_type_create();

//part_type_color1( e01, c_red );
part_type_shape( global.hitEf01T, pt_shape_square );
part_type_size( global.hitEf01T, 0.15, 0.15, -0.006, 0 );
part_type_gravity( global.hitEf01T, 0.4, 270 );
part_type_speed( global.hitEf01T, 15, 25, -0.5, 0 );
part_type_color1(global.hitEf01T, c_white);


//일반공격 피격시 타격감 효과
global.hitEf02T = part_type_create();

part_type_sprite( global.hitEf02T, sp_hitEffect01, true, true, false );
part_type_life( global.hitEf02T, 18, 18 );


//발차기 공격 피격시 타격감 효과
global.hitEf_k01 = part_type_create();

part_type_sprite( global.hitEf_k01, sp_hitEffect_kick01, true, true, false );
part_type_life( global.hitEf_k01, 18, 18 );
part_type_scale( global.hitEf_k01, 1.2, 1.2);


//화약 공격 피격시 타격감 효과
global.hitEf_f01 = part_type_create();

part_type_sprite( global.hitEf_f01, sp_hitEffect_fire01, true, true, false );
part_type_life( global.hitEf_f01, 18, 18 );
//part_type_scale( global.hitEf_f01, 1.2, 1.2);

//플레이어 피격시 타격감 효과
global.hitEf04T = part_type_create();

part_type_sprite( global.hitEf04T, sp_plHitEffect01, true, true, false );
part_type_life( global.hitEf04T, 20, 20 );


global.sinEf01 = part_type_create();
part_type_shape(global.sinEf01, pt_shape_cloud)
//part_type_sprite(global.sinEf01, sp_smoge, true, false, false);
part_type_size(global.sinEf01, 0.4, 0.4, 0.1, 0);
part_type_alpha2(global.sinEf01, 0.05, 0);
part_type_life(global.sinEf01, 20, 20);
part_type_scale(global.sinEf01, 1.5, 1);
//part_type_color2(global.sinEf01, c_red, c_white);


global.dashEf = part_type_create();

part_type_sprite(global.dashEf, sp_pl_dash, false, 1, false);
part_type_life(global.dashEf, 12, 12);
part_type_alpha2(global.dashEf, 0.8, 0);


//플레이어 총 스킬이팩트
global.gunEf = part_type_create();

part_type_sprite(global.gunEf, sp_pl_sk_gunEf, true, 1, false);
part_type_life(global.gunEf, 25, 25);


//몬스터 어그로 이팩트
global.mobAdEf = part_type_create();

part_type_sprite(global.mobAdEf, sp_mob_adEf, true, 1, false);
part_type_life(global.mobAdEf, 45, 45);
}
