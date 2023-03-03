// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobDot(dotIndex, stackIndex){
	switch (dotIndex) {
	case 0:	atkDot	= stackIndex;	break;
	case 1:	kickDot	= stackIndex;	break;
	case 2: fireDot	= stackIndex;	break;
	}
	
	if (alarm[7] < 0) { alarm[7] = 30; }
}