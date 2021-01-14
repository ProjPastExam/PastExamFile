function sc_pl_camera() {
	uc_set_target_position(x,y);
	
	layer_hspeed("Background",-(camX - uc_get_x())/5);
	layer_vspeed("Background",-(camY - uc_get_y())/5);
	camX		= uc_get_x();
	camY		= uc_get_y();
}
