/// @description Insert description here
// You can write your code in this editor
	if (surf_particles)
	{
		var cam_id	= view_get_camera(view_current);
		var cam_x	= camera_get_view_x(cam_id);
		var cam_y	= camera_get_view_y(cam_id);
		var cam_w	= camera_get_view_width(cam_id)+800;
		var cam_h	= camera_get_view_height(cam_id)+500;
	
		part_particles_create(part_sys, cam_x + random(cam_w), cam_y + random(cam_h*0.75), part_dust_light, choose(2,3));
	}
	
	if (ob_player.indoor) {
		if (image_alpha < 1) image_alpha += 0.02;
		array_shadow_color[3] = image_alpha;
	}
	else {
		if (image_alpha > 0.1) image_alpha -= 0.02;
		array_shadow_color[3] = image_alpha;
	}
	