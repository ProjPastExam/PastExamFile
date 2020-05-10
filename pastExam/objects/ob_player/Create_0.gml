/// @description Insert description here
// You can write your code in this editor

sc_playerValue();
instance_create_depth(x,y,0,Camera);
uc_enable_room_bounds_enabled(true);
uc_set_view_size(1280,720);
uc_set_window_size(1280,720);
uc_init_object_following(0.5);
uc_set_mode(1);
uc_set_instance_following_list(id);

//instance_create_depth( x, y, 0, ob_cameraControl );