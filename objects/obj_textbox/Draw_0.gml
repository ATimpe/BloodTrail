draw_set_font(fnt_textbox);
draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + txtbox_w, box_y + txtbox_h, false);
draw_set_color(c_black);
draw_rectangle(box_x + txtbox_border, box_y + txtbox_border, box_x + txtbox_w - txtbox_border, box_y + txtbox_h - txtbox_border, false);
draw_set_color(c_white);
if (option_flag) {
	var _y = box_y + txtbox_border + offset;
	// Iterates through the options and prints them out, incementing the y value after each
	for (var i = 0; i < array_length(options); i++) {
		draw_text(box_x + txtbox_border + offset, _y, options[i].str);
		_y += string_height(options[i].str) + offset;
	}
}
	
else if (display_name == "")
	//draw_text_ext(box_x + txtbox_border + offset, box_y + txtbox_border + offset, display_str, string_height("h") + offset, txtbox_w - offset * 2 - txtbox_border * 2);
	draw_text(box_x + txtbox_border + offset, box_y + txtbox_border + offset, display_str);
else {
	draw_text(box_x + txtbox_border + offset, box_y + txtbox_border + offset, display_name);
	draw_text_ext(box_x + txtbox_border + offset, box_y + txtbox_border + offset *  2 + string_height(display_name), display_str, string_height("h") + offset, txtbox_w - offset * 2 - txtbox_border * 2);
}


if (option_flag) {
	var _y = box_y + txtbox_border + offset;
	// Iterates through the options and prints them out, incementing the y value after each
	for (var i = 0; i < array_length(options); i++) {
		if (i == option_index)
			draw_rectangle(box_x + txtbox_border + offset, _y, box_x + txtbox_w - txtbox_border - offset, _y + string_height(options[i].str), true);
		_y += string_height(options[i].str) + offset;
	}
}