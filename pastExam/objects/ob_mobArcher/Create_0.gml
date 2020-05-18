/// @description Insert description here
// You can write your code in this editor
sc_mobValue();

isFirstAttack = true;
frontSight *= 2;		// 앞쪽 시야 2배(12칸)
backSight *= 2;			// 뒤쪽 시야 2배(6칸)
attackLength = attackLength + backSight - 64;	// 공격 사거리 = 뒤쪽시야 (6칸)
xSpeed = 0;