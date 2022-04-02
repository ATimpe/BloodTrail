// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function parseLineBreak(str, w){
	var _lastSpace = 1; // The index of the previous space to inculde a line break
	
	for (var i = 1; i < string_length(str); i++) {
		if (string_char_at(str, i) == " ")
			_lastSpace = i;
		
		// If the width of the string is created than the width specified
		if (string_width(string_copy(str, 1, i)) > w) {
			// Removes the last space that it found and then replaes it with a line break
			str = string_delete(str, _lastSpace, 1);
			str = string_insert("\n", str, _lastSpace);
		}
	}
	
	return str;
}