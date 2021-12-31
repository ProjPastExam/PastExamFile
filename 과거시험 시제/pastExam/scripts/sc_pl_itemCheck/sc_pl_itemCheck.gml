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
	item4	= false;
	}
	
	
	global.atkDmgScale = 1;
	global.kickDmgScale = 1;
	global.fireDmgScale = 1;
	
	if (global.itemSum == 0) {
		itemCheck = false;
		return;
	}
	
	for (var i = 0; i < global.itemSum; i++) {
		//show_debug_message(i);
		if (global.itemGet[i] == NULL) { itemCheck = false;	return; }
		global.itemGet[i].itemFunc();
		dmgScale[global.itemGet[i].itemKind]++;
		
	}
	
	switch (dmgScale[0]) {
		case 1:	global.atkDmgScale = 1.2;	break;
		case 2:	global.atkDmgScale = 1.5;	break;
		case 3:	global.atkDmgScale = 2.1;	break;
		case 4:	global.atkDmgScale = 2.4;	break;
		case 5:	global.atkDmgScale = 2.6;	break;
		case 6:	global.atkDmgScale = 2.7;	break;
	}
	
	switch (dmgScale[1]) {
		case 1:	global.kickDmgScale = 1.2;	break;
		case 2:	global.kickDmgScale = 1.5;	break;
		case 3:	global.kickDmgScale = 2.1;	break;
		case 4:	global.kickDmgScale = 2.4;	break;
		case 5:	global.kickDmgScale = 2.6;	break;
		case 6:	global.kickDmgScale = 2.7;	break;
	}
	
	switch (dmgScale[2]) {
		case 1:	global.fireDmgScale = 1.2;	break;
		case 2:	global.fireDmgScale = 1.5;	break;
		case 3:	global.fireDmgScale = 2.1;	break;
		case 4:	global.fireDmgScale = 2.4;	break;
		case 5:	global.fireDmgScale = 2.6;	break;
		case 6:	global.fireDmgScale = 2.7;	break;
	}
	
	
	
	itemCheck	= false;
}
