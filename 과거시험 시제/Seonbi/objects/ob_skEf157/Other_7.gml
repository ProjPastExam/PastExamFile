/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (isActive == 2)
{
	sc_pl_atkEf(sc_pl_kickDmg()*2, sc_pl_kickPene(), sc_pl_kickShock(), 0, 
		0, 1, 5, sp_pl_sk157Ef3, dir,0,,,,,ob_atkEfDf);
	SE_Play(s_dokBossAtk4, global.vol);
	uc_shake(8, 0.1);
}

instance_destroy();

