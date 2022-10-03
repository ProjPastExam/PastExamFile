/// @description Insert description here
// You can write your code in this editor
state++;

with (ob_player) {
	other.x = x;
	other.y = y;
	if (canMove != 5 && canMove != 13) {
		if (other.state < 200) other.state = 200;
	}
}

if (state < 200)	{ image_index = 1; }
else if (state < 205)	{ image_index = 3; }
else if (state < 210)	{ image_index = 4; }
else					{ instance_destroy(); }
alarm[0] = 1;