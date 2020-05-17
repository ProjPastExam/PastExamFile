var cam_id = view_get_camera(view_current);
var camX = camera_get_view_x(cam_id);
var camY = camera_get_view_y(cam_id);
var buttonSize	= 150;

draw_sprite(sp_buttonLeft,0,camX + 50, camY + 520);
virtual_key_add(camX + 50, camY + 500, buttonSize, buttonSize, vk_left);

draw_sprite(sp_buttonRight,0,camX + 250, camY + 520);
virtual_key_add(camX + 250, camY + 500, buttonSize, buttonSize, vk_right);




draw_sprite(sp_buttonAttack,0,camX + 925, camY + 520);
virtual_key_add(camX + 925, camY + 500, buttonSize, buttonSize, ord("X"));

draw_sprite(sp_buttonJump,0,camX + 1100, camY + 520);
virtual_key_add(camX + 1100, camY + 500, buttonSize, buttonSize, ord("C"));