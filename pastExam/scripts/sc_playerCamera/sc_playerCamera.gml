


if ( !place_meeting(x,y,ob_getCamera) ) {
	uc_set_view_size(1280,720);
	uc_set_view_scale(1,0.03);
	uc_set_mode(1);
	uc_set_instance_following_list(id);
	uc_init_object_following(camSpeed);
	
	if (camSpeed < 0.5) { camSpeed += 0.001 }
}