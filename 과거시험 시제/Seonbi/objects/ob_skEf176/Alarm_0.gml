/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
sc_obPhysics();

if (!isJump) 
{
	sc_pl_atkEf(sc_pl_fireDmg()*4, sc_pl_firePene(), 100, 0, 
		0, 2, 5, sp_pl_sk176Ef4, dir, 0);
	uc_shake(8, 0.1);
	SE_Play(s_explo2, global.vol);
	instance_destroy();
}

alarm[0] = 1;