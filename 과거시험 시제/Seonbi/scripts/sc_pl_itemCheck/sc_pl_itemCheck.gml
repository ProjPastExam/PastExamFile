////////////////////////////////////////////////////////////////////////
//아이템 채크//

////////////////////////////////////////////////////////////////////////

function sc_pl_itemCheck(){
	var dmgScale = array_create(4, 0);
	{
	isSin			= 0;
	isFront			= 0;
	item2			= 0;
	global.item3	= 0;
	global.item4	= 0;
	global.aItem4	= 0;
	global.aItem5	= 0;
	global.aItem6	= 0;
	item2Index1		= 0;
	item2Index2		= 0;
	item2Index3		= 0;
	global.item5	= 0;
	global.item6	= 0;
	item7			= 0;
	aItem7			= 0;
	aItem7Index		= 0;
	global.item8	= 0;
	global.item9	= 0;
	global.item10	= 0;
	global.item11	= 0;
	global.item12	= 0;
	global.item13	= 0;
	global.item24	= 0;
	global.item44	= 0;
	global.item66	= 0;
	global.item67	= 0;
	global.item68	= 0;
	global.item69	= 0;
	//global.atkCtMagScaleItem	= 1;
	//global.kickCtMagScaleItem	= 1;
	//global.fireCtMagScaleItem	= 1;
	}
	
	
	//global.atkDmgScale = 1;
	//global.kickDmgScale = 1;
	//global.fireDmgScale = 1;
	/*
	for (var i = 0; i < 3; i++) {
		for (var j = 0; j < 5; j++) {
			global.itemScale[i][j] = 0;
		}
	}
	*/
	if (global.itemSum == 0) {
		itemCheck = false;
		return;
	}
	
	for (var i = 0; i < global.itemSum; i++) {
		//show_debug_message(i);
		if (global.itemGet[i] == NULL) { itemCheck = false;	break; }
		global.itemGet[i].itemFunc(global.itemGet[i].itemGrade);
		//dmgScale[global.itemGet[i].itemKind]++;
		/*
		var aGrade	= global.itemGet[i].itemGrade;
		var aKind	= global.itemGet[i].itemKind;
		var aBuff	= global.itemGet[i].itemBuff;
		global.itemScale[aKind][aBuff] += aGrade;
		*/
		//if (global.itemScale[aKind][aBuff] > 6) global.itemScale[aKind][aBuff] = 6;
		
	}
	
	/*
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
	*/
	
	
	itemCheck	= false;
}
