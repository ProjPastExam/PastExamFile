function sc_pushedBack(argument0) {
	// 0: 넉백 없음 1 : 약한 넉백 2: 중간 넉백 3: 강한 넉백


	var impact = argument0;
	var degree = 30;
	var pushed = impact * degree;

	if ( image_xscale > 0) { x -= pushed; }
	else { x += pushed; }
	isStern = true;
	isPushedBack = false;


}
