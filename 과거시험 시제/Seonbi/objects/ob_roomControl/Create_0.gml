/// @description Insert description here
// You can write your code in this editor
sc_set_abSoulMax();
BGS_Set(0, 0);
instance_create_depth(0, 0, 0, ob_gamepadSlot);
randomize();

isTalk	= 0;
pause	= 0;
slow	= 0;
alarm[0] = 1;

talkX	= 0;
talkY	= 0;
talkZ	= 0;

mobNum = 1;
alarm[5] = 10;

alarm[6] = 1;
room_speed = 60;

//if (isMinimap) alarm[4] = 30;
sc_setMinimap();

nameS = "";
talkArray = array_create(20);
talkString = "";
questionString = array_create(10);
questionNum		= 0;
questionState	= 0;
talkNum = 0;
talkCnt = 0;
isEnhance = false;
isSmith	= false;
hpProcess = 0;
dark = 45;
npcFace = sp_npc_blank;

moneyPrint	= global.money;
abSoulPrint	= global.abSoul;
global.moneyBuffer = 0;

var lIndex	= true;
var lIndex2	= 40;
if (global.abPointMax >= 40 && global.clearStage < 25 )	{ lIndex = false; }
if (global.abPointMax >= 65 && global.clearStage < 45 )	{ lIndex = false;	lIndex2 = 65; }
if (global.abPointMax >= 90)							{ lIndex = false;	lIndex2 = 90; }

if (!lIndex) {
	global.abSoul = 0;
	global.abPointMax = lIndex2;
	VSLS_SetAndSave("abSoul", 0, "saveFile");
	VSLS_SetAndSave("abPointMax", lIndex2, "saveFile");
}

ctIndex = 0;

isHpUI = false;

if (isCt) isTalk = 4;

if (roomBgm == noone)	BGM_Stop(60);
else					BGM_Play(roomBgm, global.volBgm, 60);

sc_itemSprite();

//스킬 UI 설정
sc_skillUi();
//instance_create_depth(0, 0, 0, ob_UIControl);
//sc_setMinimap();


global.ranStage1 = 0;
global.ranStage2 = 0;

if (isRanStage) {
	var ranIndex = irandom_range(0, 99);
	if (ranIndex < 30) {
		//instance_create_layer(x, y, "effect2", ob_ranSunbi);
	}
}

global.stage	= stage;
if (isCt && csMgIndex != -1)
{
	sc_csManage(csMgIndex);
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


//공중 공격 피격시 타격감 효과
global.hitEf_j01 = part_type_create();

part_type_sprite( global.hitEf_j01, sp_hitEffect_jump, true, true, false );
part_type_life( global.hitEf_j01, 18, 18 );
//part_type_scale( global.hitEf_j01, 1.2, 1.2);

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

part_type_sprite(global.mobAdEf, sp_talkNug, true, 1, false);
part_type_life(global.mobAdEf, 45, 45);


//몬스터 카운터 이팩트
global.mobCounterEfK = part_type_create();

part_type_sprite(global.mobCounterEfK, sp_hitEffect_counterK, true, 1, false);
part_type_life(global.mobCounterEfK, 15, 15);


global.mobCounterEfF = part_type_create();

part_type_sprite(global.mobCounterEfF, sp_hitEffect_counterF, true, 1, false);
part_type_life(global.mobCounterEfF, 15, 15);


//몬스터 크리티컬
global.mobCtEf = part_type_create();

part_type_sprite(global.mobCtEf, sp_hitEffect_critical, true, 1, false);
part_type_life(global.mobCtEf, 15, 15);



//돈
global.moneyEf = array_create(8);

for (var i = 0; i < 8; i++)
{
	global.moneyEf[i] = part_type_create();
	part_type_life(global.moneyEf[i], 60, 60);
}
part_type_sprite(global.moneyEf[0], sp_money1, true, 1, false);
part_type_sprite(global.moneyEf[1], sp_money2, true, 1, false);
part_type_sprite(global.moneyEf[2], sp_money3, true, 1, false);
part_type_sprite(global.moneyEf[3], sp_money4, true, 1, false);
part_type_sprite(global.moneyEf[4], sp_money5, true, 1, false);
part_type_sprite(global.moneyEf[5], sp_money6, true, 1, false);
part_type_sprite(global.moneyEf[6], sp_money7, true, 1, false);
part_type_sprite(global.moneyEf[7], sp_money8, true, 1, false);
}
