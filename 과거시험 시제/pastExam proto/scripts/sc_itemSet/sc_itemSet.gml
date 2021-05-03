// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_itemSet(){
	global.item			= array_create(200);
	global.itemMax		= 1;
	global.itemSum		= 0;
	global.itemNum		= 4;
	global.itemGet 		= array_create(10, -1);
	global.itemGrade	= array_create(10, -1);
	
	
	//신기전 모션변경 아이템
	global.item[0] = function(grade) {
		if ( object_exists(ob_player) )
			ob_player.isSin = grade;
	}
	
	
	global.itemRareSum = 0;
	for (var i = 0; i < global.itemMax; i++) {
		
	}
	
}

