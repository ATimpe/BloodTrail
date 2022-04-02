// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hasStatusEffect(_ID){
	with (obj_game_manager) {
		for (var i = 0; i < ds_list_size(status_effect_list); i++) {
			if (status_effect_list[| i].ID == _ID) {
				return true;
			}
		}
	}
	
	return false;
}