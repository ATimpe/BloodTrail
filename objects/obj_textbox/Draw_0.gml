var _boxX = 0;
var _boxY = camera_get_view_height(view_camera[0]) * 5 / 6;

draw_set_font(fnt_textbox);
draw_set_color(c_white);
draw_rectangle(_boxX, _boxY, _boxX + txtbox_w, _boxY + txtbox_h, false);
draw_set_color(c_black);
draw_rectangle(_boxX + txtbox_border, _boxY + txtbox_border, _boxX + txtbox_w - txtbox_border, _boxY + txtbox_h - txtbox_border, false);
draw_set_color(c_white);
draw_text(_boxX + txtbox_border + offset,_boxY + txtbox_border + offset, display_name);
draw_text_ext(_boxX + txtbox_border + offset, _boxY + txtbox_border + offset *  2 + string_height(display_name), display_str, offset, txtbox_w - offset * 2 - txtbox_border * 2);