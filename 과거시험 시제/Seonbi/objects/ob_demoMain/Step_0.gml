/// @description Insert description here
// You can write your code in this editor
var camX = uc_get_view_width();
var camY = uc_get_view_height();
var mX = mouse_x - uc_get_x() + camX/2;
var mY = mouse_y - uc_get_y() + camY/2 - 300;
if (sc_getRoomValue("pause") >= 0) instance_destroy();
i = 0;
if (mX > camX/2 - 240) { if (mX < camX/2 + 240) {
	if (mY > camY/2 - 80) {if (mY < camY/2 + 80) {
	i = 1;
	if (mouse_button) alarm[10] = 10;
}}}}