/// @description Insert description here
// You can write your code in this editor
if (show && ob_roomControl.pause >= 0) {
	draw_sprite(sp_demoTalk, 0, 0, 800);
	draw_set_font(f_kor);
	draw_set_color(c_black);
	if (p < num) draw_text(150, 900, human[p]);
	if (p < num) {
		if (p == 0) draw_text(400, 945, text[p]);
		if (p == 1) draw_text(450, 945, text[p]);
	}
}