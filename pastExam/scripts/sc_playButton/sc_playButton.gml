var cam_id = view_get_camera(view_current);
var camX = camera_get_view_x(cam_id);
var camY = camera_get_view_y(cam_id);
var buttonSize	= 150;
var buttonY		= 550;

draw_sprite(sp_buttonLeft,0,camX + 50, camY + buttonY);
virtual_key_add(camX + 50, camY + buttonY, buttonSize, buttonSize, vk_left);

draw_sprite(sp_buttonRight,0,camX + 250, camY + buttonY);
virtual_key_add(camX + 250, camY + buttonY, buttonSize, buttonSize, vk_right);




draw_sprite(sp_buttonAttack,0,camX + 925, camY + buttonY);
virtual_key_add(camX + 925, camY + buttonY, buttonSize, buttonSize, ord("X"));

draw_sprite(sp_buttonJump,0,camX + 1100, camY + buttonY);
virtual_key_add(camX + 1100, camY + buttonY, buttonSize, buttonSize, ord("C"));



draw_sprite(sp_buttonJump,0,camX + 1100, camY + 50);
virtual_key_add(camX + 1100, camY + 50, buttonSize, buttonSize, vk_escape);