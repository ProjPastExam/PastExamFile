function sc_pl_camera() {
	
	/*
	//var camSY = uc_get_view_height()/2;
	var camX		= uc_get_x();
	var camY		= uc_get_y();
	
	if (layer_exists("Background1")) {
		layer_x("Background1", camX);
		layer_y("Background1", camY - 540);
	}
	if (layer_exists("Background2")) {
		layer_x("Background2", camX/2);
		layer_y("Background2", room_height - 1080);
	}
	*/
	//layer_hspeed("Background1",-(camX - uc_get_x()));
	//layer_vspeed("Background1",-(camY - uc_get_y()));
	
	
	if (instance_exists(ob_roomControl) && ob_roomControl.cmMode == 0) {
		if (isJump)	uc_set_target_position(x,y-60);
		else		uc_set_target_position(x,y-120);
	}
	
	if (instance_exists(ob_roomControl) && ob_roomControl.cmMode == 10) {
		
		uc_set_target_position(uc_get_x()+80, uc_get_y()-2);
	}
}
