// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobTest(){
	if( !global.isPause ) {
		switch ( state ) {
			case 0:
				sc_mobArcher(sp_mobBanditRun);
				break;
			case 1:
				sc_mobArcher(sp_mobBanditRun);
				break;
			case 2:
				sc_mobAttack2(sp_mobBanditAttack2, ob_mobAxe);
				break;
			case 3:
				sc_mobArcher(sp_mobBanditRun);
				break;
			case 4:
				sc_mobArcher(sp_mobBanditRun);
				break;
			case 99:
				instance_destroy(self);
				break;
		}
	}
}