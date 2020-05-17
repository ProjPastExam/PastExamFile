var cam_id = view_get_camera(view_current);
var camX = camera_get_view_x(cam_id);
var camY = camera_get_view_y(cam_id);

draw_sprite(sp_buttonLeft,0,camX + 50, camY + 520);
virtual_key_add(camX + 50, camY + 500, 120, 100, vk_left);

draw_sprite(sp_buttonCircle,0,camX + 175, camY + 520);
virtual_key_add(camX + 175, camY + 500, 120, 100, vk_down);

draw_sprite(sp_buttonRight,0,camX + 300, camY + 520);
virtual_key_add(camX + 300, camY + 500, 120, 100, vk_right);


draw_sprite(sp_buttonAttack,0,camX + 975, camY + 520);
virtual_key_add(camX + 975, camY + 500, 120, 100, ord("X"));

draw_sprite(sp_buttonJump,0,camX + 1100, camY + 520);
virtual_key_add(camX + 1100, camY + 500, 120, 100, ord("C"));