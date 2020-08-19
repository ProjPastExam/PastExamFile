/// @description Insert description here
// You can write your code in this editor

sc_playerValue();
instance_create_depth(x,y,0,Camera);
uc_enable_room_bounds_enabled(true);
uc_set_window_size(1320,720);
uc_set_view_size(1320,720);
uc_set_view_scale(1,0.03);
uc_set_mode(0);
camX		= uc_get_x();
camY		= uc_get_y();

alarm[0] = 10;

//instance_create_depth( x, y, 0, ob_cameraControl );