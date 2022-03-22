// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function decStatusEffects(){
	with (obj_game_manager) {
		for (var i = 0; i < ds_list_size(status_effect_list); i++) {
			if (status_effect_list[| i].turns > 0) {
				status_effect_list[| i].turns--;
			}
		}
	}
}