/// @description Insert description here
// You can write your code in this editor
var cam_id = view_get_camera(view_current);
var camX = camera_get_view_x(cam_id);
var camY = camera_get_view_y(cam_id);



if (global.isPause) {
	draw_sprite(sp_pauseDark,0,camX, camY);
}