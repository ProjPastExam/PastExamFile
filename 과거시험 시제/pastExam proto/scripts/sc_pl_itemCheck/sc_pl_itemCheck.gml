////////////////////////////////////////////////////////////////////////
//아이템 채크//

////////////////////////////////////////////////////////////////////////

function sc_pl_itemCheck(){
	{
	isSin = -1;
	isFront = -1;
	itemJump = -1;
	itemRise = -1;
	}
	
	
	atkDmgScale = 1;
	
	if (global.itemSum == 0) {
		itemCheck = false;
		return;
	}
	
	for (var i = 0; i <= global.itemSum; i++) {
		show_debug_message(i);
		var item = global.itemGet[i];
		var grade = global.itemGrade[i]
		if (item == -1) { itemCheck = false;	return; }
		sc_item(item, grade);
		
	}
	itemCheck	= false;
}
