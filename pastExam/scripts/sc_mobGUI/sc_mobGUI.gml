function sc_mobGUI() {
	draw_self();
//	draw_sprite_stretched(sp_healthbar_bg, 0, healthbar_x, healthbar_y, healthbar_width, healthbar_height);
//	draw_sprite_stretched(sp_healthbar, 0, healthbar_x, healthbar_y, min((self.mobHP/self.mobHP_MAX) * healthbar_width, healthbar_width), healthbar_height);
//	draw_sprite_stretched(sp_healthbar_border , 0, healthbar_x, healthbar_y,healthbar_width, healthbar_height);

	draw_text(x-20, y-20, string(mobHP));
}
