// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function parseDialogLine(){
	if (string_char_at(str[line], 0) == ">") {
		display_name = string_delete(str[line], 1, 1); // removes the '>'
		line++;
		display_str = str[line];
		line++;
	} else {
		display_str = str[line];
		display_name = "";
		line++;
	}
}