str = [];               //array of strings read from file
line = 0;               //current line in array
line_count = 0;         //total lines in file
fname = "test.txt";   //name of file with dialogue
display_str = "";       //current dialogue text
display_name = "";      //name of character talking
txtbox_w = camera_get_view_width(view_camera[0]);
txtbox_h = camera_get_view_height(view_camera[0]) / 6;
txtbox_border = 9;
offset = 18;
post_script = -1;      // The script or method to execute after text is finished (must take 0 args)
box_x = 0;
box_y = camera_get_view_height(view_camera[0]) * 5 / 6;

option_flag = false;                // If the current text contains options
options = [];
option_index = -1;                  // The index of the currently selected option

display_str_len = 0;
txt_spd_timer = 0;
