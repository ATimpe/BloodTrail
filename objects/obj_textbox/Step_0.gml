/// @desc Read str[]
/// This code will read in each line of the str. For the dialogue in 
/// this game, it will either be spoken by a character with a name
/// which will start with '>' which the system will put in its own variable
/// or just be a description which will have no name attached to it.
/// ex.
/// 

if (line < line_count && keyboard_check_pressed(vk_space)) {
	parseDialogLine();
} else if (keyboard_check_pressed(vk_space)) { // When it is on the final line
	display_name = "";
	display_str = "";
	line = 0;
	line_count = 0;
	str = [];
	// Converts method to script
	if (is_method(post_script))
		post_script = method_get_index(post_script);
	
	script_execute(post_script);
}