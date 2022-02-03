/// @description Insert description here
// You can write your code in this editor
draw_sprite(skSprite, 0, x, y);
//draw_self();

if (tabIndex == (skNum-1)) {
	draw_sprite(sp_tabSelect, 0, x, y);
}

if (ob_tabControl.skState == skNum) {
	draw_sprite(sp_tabSelect2, 0, x, y);
}
