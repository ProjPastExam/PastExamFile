/*
sc_atk 종류 스크립트 설명
[ 0 일반  1 대쉬  2 강공 ]
*/

atkKey = 0;
image_index = 0;

if ( canMove == 0 ) {
	if ( keyAttack ) {
		canMove = 1;
		atkKey += weaponR * 10;
		if ( isDash ) atkKey += 1;
	}
}