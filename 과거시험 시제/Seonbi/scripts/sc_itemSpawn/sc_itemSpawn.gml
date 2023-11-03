// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_itemSpawn(){
	var i = true;
	while (i) {
		randomize();
		var kind	= irandom_range(0, 4);
		
		if		(kind == 0) { itemNum = irandom_range(1, 7); }
		else if (kind == 1)	{ itemNum = irandom_range(21, 24); }
		else if (kind == 2)	{ itemNum = irandom_range(41, 44); }
		else				{ itemNum = irandom_range(61, 69); }
		
		if (sc_itemCheck(itemNum)) { i = false; }
		var j = 0;
		with (ob_item) {
			if (variable_instance_exists(id, "itemNum")) {
				if (other.itemNum == itemNum)	{ j++; } 
			}
		}
		if (j > 1) { i = true; }
	}
}