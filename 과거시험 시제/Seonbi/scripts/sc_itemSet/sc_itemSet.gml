// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_itemSet(){
	//global.itemMax		= 4;
	global.itemSum		= 0;
	//global.itemNum		= 4;
	var i = 0;
	for (i = 0; i < 10; i++) {
		global.itemGet[i] = NULL;
		//global.itemGrade[i] = -1;
	}
	
	sc_itemData();

	//신기전 모션변경 아이템

	
	/*
	global.itemRareSum = 0;
	for (var i = 0; i < global.itemMax; i++) {
		
	}
	*/
}

