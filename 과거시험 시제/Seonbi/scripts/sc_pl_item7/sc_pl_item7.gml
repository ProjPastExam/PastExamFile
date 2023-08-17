// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_item7(){
	if (aItem7Index > 0) aItem7Index--;
	
	if ((aItem7Index <= 0) && (global.comCt >= 5)) {
		var inst = instance_create_layer(x, y, "effect2", ob_pl_item2);
		global.comCt -= 5;
		inst.dir = dir;
		inst.grade = aItem7;
		aItem7Index = 8;
	}
}