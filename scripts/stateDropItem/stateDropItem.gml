// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stateDropItem(){
	if (position_meeting(mouse_x, mouse_y, obj_item) && mouse_check_button_pressed(global.select1)) {
		destroyItem(instance_position(mouse_x, mouse_y, obj_item));
		endEncounter();
	}
}