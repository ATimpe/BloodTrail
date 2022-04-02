/// @desc Read str[]
/// This code will read in each line of the str. For the dialogue in 
/// this game, it will either be spoken by a character with a name
/// which will start with '>' which the system will put in its own variable
/// or just be a description which will have no name attached to it.
/// ex.
/// 

if (option_flag) {
	option_index = -1;
	var _y = box_y + txtbox_border + offset;
	// Iterates through the options and prints them out, incementing the y value after each
	for (var i = 0; i < array_length(options); i++) {
		if (point_in_rectangle(mouse_x, mouse_y, box_x + txtbox_border + offset, _y, box_x + txtbox_w - txtbox_border - offset, _y + string_height(options[i].str))) {
			option_index = i;
			
			// Select the option
			if (mouse_check_button_pressed(global.select1)) {
				display_name = "";
				display_str = "";
				line = 0;
				line_count = 0;
				str = [];
				options[i].selectOption();
			}
		}
		_y += string_height(options[i].str) + offset;
	}
}

else if (line < line_count && keyboard_check_pressed(vk_space) && global.game_state = gameState.text) {
	parseDialogLine();
	display_str_len = 0;
} else if (keyboard_check_pressed(vk_space) && global.game_state = gameState.text) { // When it is on the final line
	display_name = "";
	display_str = "";
	line = 0;
	line_count = 0;
	str = [];
	// Converts method to script
	if (is_method(post_script))
		post_script = method_get_index(post_script);
	
	script_execute(post_script);
	display_str_len = 0;
}

/*
if (txt_spd_timer >= global.textspd) {
	display_str_len++;
	txt_spd_timer = 0;
}

if (global.game_state == gameState.text) {
	txt_spd_timer++;
}*/
