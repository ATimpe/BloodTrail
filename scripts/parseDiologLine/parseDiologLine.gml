// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function parseDialogLine(){
	// If the current like is options
	option_flag = str[line] == "*op";
	
	if (string_char_at(str[line], 0) == ">") {
		display_name = string_delete(str[line], 1, 1); // removes the '>'
		line++;
		display_str = parseLineBreak(str[line], txtbox_w - txtbox_border * 2 - offset * 2);
		line++;
	} else if(str[line] == "*op") {
		options = [];
		display_str = "";
		line++;
		// makes post script into an array
		post_script = [];
		while (string_char_at(str[line], 0) == "*") {
			// Iterates through each line that begins with * until it hits a # which indicates what function
			// it should execute after clicking the choice
			for (var i = 1; i < string_length(str[line]); i++) {
				// If the string doesn't have a # it throws an error
				if (string_pos("#", str[line]) == 0)
					throw "Error. No marked post script for option.";
				
				// When it finds the # it will take the text before it and put it into the display string
				// and give it a new line at the end.
				// then it adds the execution script to an array
				if (string_char_at(str[line], i) == "#") {
					if (!script_exists(asset_get_index(string_copy(str[line], i + 1, string_length(str[line]) - i))))
						throw "Error. Script doesn't exist.";
					
					array_push(options,
								new Option(string_copy(parseLineBreak(str[line], txtbox_w - txtbox_border * 2 - offset * 2), 1, i - 1), 
								asset_get_index(string_copy(str[line], i + 1, 
								string_length(str[line]) - i))));
					break;
				}
			}
			line++;
			if (line >= array_length(str))
				break;
		}
	} else {
		display_str = parseLineBreak(str[line], txtbox_w - txtbox_border * 2 - offset * 2);
		display_name = "";
		line++;
	}
}