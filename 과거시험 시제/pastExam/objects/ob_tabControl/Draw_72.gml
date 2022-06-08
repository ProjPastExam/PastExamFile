/// @description Insert description here
// You can write your code in this editor



if (!surface_exists(surf)) {
	//surf = surface_create(window_get_width(), window_get_height());
	surf = surface_create(1920, 1080);
	buffer_set_surface(global.screenBuffer, surf, 0);
}

draw_surface(surf,0, 0);

sc_gameGUI();
draw_sprite(sp_black2, 0, 0, 0);
