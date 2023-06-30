// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_hitAfter(frame, isEffect = true){
	var fIndex = int64(frame*(1 + global.item13*0.3));
	if (fIndex < hitAfter)	return;
	
	hitAfter = fIndex;
	if (isEffect)	hitEffect = fIndex;
	image_alpha = 0.6;
}