/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_other);

draw_sprite(spr_item_border, 0, x, y);

if (mouse_over || selected)
	draw_sprite(spr_item_selected, 0, x, y);