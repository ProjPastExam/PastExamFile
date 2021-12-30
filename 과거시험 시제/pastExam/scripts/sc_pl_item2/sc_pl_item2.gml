// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_item2(){
	if (item2Index3 > 0) item2Index3--;
	if (item2Index2 > global.mp) {
		var scIndex = item2Index2 - global.mp;
		item2Index1 += scIndex;
		
	}
	item2Index2 = global.mp;
	
	if ((item2Index3 <= 0) && (item2Index1 >= 100)) {
		var inst = instance_create_layer(x, y, "effect2", ob_pl_item2);
		inst.dir = dir;
		item2Index1 -= 100;
		item2Index3 = 8;
	}
}