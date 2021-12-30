////////////////////////////////////////////////////////////////////////
//아이템 채크//

////////////////////////////////////////////////////////////////////////

function sc_pl_itemCheck(){
	var dmgScale = array_create(3, 0);
	{
	isSin = false;
	isFront = false;
	itemJump = false;
	item2	= false;
	}
	
	
	global.atkDmgScale = 1;
	
	if (global.itemSum == 0) {
		itemCheck = false;
		return;
	}
	
	for (var i = 0; i <= global.itemSum; i++) {
		//show_debug_message(i);
		if (global.itemGet[i] == NULL) { itemCheck = false;	return; }
		global.itemGet[i].itemFunc();
		dmgScale[global.itemGet[i].itemKind]++;
		
	}
	itemCheck	= false;
}
