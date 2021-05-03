////////////////////////////////////////////////////////////////////////
//아이템 채크//

////////////////////////////////////////////////////////////////////////

function sc_pl_itemCheck(){
	isSin = -1;
	isFront = -1;
	
	if (global.itemSum == 0) {
		itemCheck = false;
		return;
	}
	
	for (var i = 0; i <= global.itemSum; i++) {
		show_debug_message(i);
		var item = global.itemGet[i];
		if (item == -1) { itemCheck = false;	return; }
		
		
	}
	
	itemCheck = false;
}
