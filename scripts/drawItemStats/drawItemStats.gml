// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawItemStats(_name, _desc1, _desc2){
	draw_text(x + border + padding, 
				y + border + padding, 
				_name);
			
	draw_text(x + border + padding, 
				y + string_height(" ") + border + padding * 2, 
				_desc1);
			
	draw_text_ext(x + border + padding, 
					y + string_height(" ") * 2 + padding * 3, 
					_desc2, 
					string_height(" ") + padding, 
					item_width - border * 2 - padding * 2);
}