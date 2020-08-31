function sc_mobGUI() {
	draw_sprite_stretched(sp_healthbar_bg, 0, healthbar_x, healthbar_y, healthbar_width, healthbar_height);
	draw_sprite_stretched(sp_healthbar, 0, healthbar_x, healthbar_y, min((self.mobHP/self.mobHP_MAX) * healthbar_width, healthbar_width), healthbar_height);
	draw_sprite_stretched(sp_healthbar_border , 0, healthbar_x, healthbar_y,healthbar_width, healthbar_height);

	draw_text(self.x-20, self.y-20, string(self.mobHP));


}