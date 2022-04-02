// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stateStump(){
	var _select1 = mouse_check_button_pressed(global.select1);
	
	if (!isObjChildInDeck(obj_cup, obj_item_manager.player_hand)) {
		endEncounter();
	}
	
	if (_select1 && position_meeting(mouse_x, mouse_y, obj_cup)) {
		var _selectedItem = instance_position(mouse_x, mouse_y, obj_cup);
		_selectedItem.blood += 1;
		endEncounter();
	}
}