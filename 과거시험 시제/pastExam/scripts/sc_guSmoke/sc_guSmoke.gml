// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_guSmoke(procIndex, smokeIndex){
	if (process == procIndex)
	{
		smokeSp = sp_guSmoke1;
		if (smokeIndex == 2)	smokeSp = sp_guSmoke2;
		with (instance_create_layer(x, y+hitLot, "effect", ob_guSmoke)) {
			ob = other.id;
			sprite_index = other.smokeSp;
		}
	}
}