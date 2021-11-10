// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_item(num, grade) {
	switch (num) {
		
	//신기전 모션변경
	case 0:
		isSin = grade;
		break;
		
	//전방 발차기 모션변경
	case 1:
		isFront = grade;
		break;
		
	//위공격 점프
	case 2:
		itemRise = grade;
		break;
		
	//공중 적 공격시 추뎀
	case 3:
		itemJump = grade;
		break;
		
	//
	case 4:
		
		break;
		
	//공란
	case 5:
		
		break;
		
	}
}