/// @description 몹 변수 선언
// You can write your code in this editor

/*
몹 변수 설명
knockback : 몹이 넉백 가능한가
hp : 몹의 체력
state : 몹의 상태
hitAfter : 피격 후 무적시간, 스크립트로 조정
hitDir : 스크립트로 조정
delay : 순찰, 공격간 딜레이 조정
*/
sc_obPValue();
sc_mobSpawn();
alarm[0] = 1;
alarm[5] = 5;

hitLot = 150;
phaseDelay = 10;
nextState = 12;
isCounter = false;

standSp		= sp_gu_stand;
stand2Sp	= sp_gu_stand;
walkSp		= sp_gu_walk;
runSp		= sp_gu_run;
painSp		= sp_gu_pain;
shockSp		= sp_jpBoss_shock;