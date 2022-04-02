/// @desc Load Script

if (file_exists(fname)) {
	var file = file_text_open_read(fname);
	
	// Iterates through file and places each line into an array
	for (var i = 0; !file_text_eof(file); i++) {
		str[i] = file_text_read_string(file);
		file_text_readln(file);
		line_count++;
	}
	
	file_text_close(file);
	
	parseDialogLine();
	
	// Performs the draw event again so that it can reset the display_str
} else {
	throw ("ERROR: dialogue file not found: " + fname);
}