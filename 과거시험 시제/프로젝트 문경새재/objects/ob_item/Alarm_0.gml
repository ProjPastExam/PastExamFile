/// @description Insert description here
// You can write your code in this editor
sin_t++;
if (sin_t > 300) sin_t = 0;

if (isNew) {
	xSpeed = image_xscale * 9;
	ySpeed = (15 - alarm[1]);
}
if (isNew) {
	x += xSpeed;
	y += ySpeed;

	xSpeed = 0;
	ySpeed = 0;
}

alarm[0] = 1;
