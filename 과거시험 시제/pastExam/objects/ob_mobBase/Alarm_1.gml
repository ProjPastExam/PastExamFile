/// @description mob ad dismiss
// You can write your code in this editor
var plX = sc_pl_get("x");
var drX = abs(plX - x);
var drY = sc_pl_get("y") - y;

if ( hp > 0 && !((drX < adDistance && (drY > adHeight * -1) && (drY < adHeight)) ) ) {
	state = 0;
	delay = random_range(90,120);
	ad = false;
	process = 0;
	sprite_index = stand2Sp;
}