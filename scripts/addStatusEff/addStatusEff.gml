// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function addStatusEff(_ID, _turns){
	with (obj_game_manager) {
		if (hasStatusEffect(_ID)) {
			for (var i = 0; i < ds_list_size(status_effect_list); i++) {
				if (status_effect_list[| i].ID == _ID) {
					status_effect_list[| i].incSeverity();
					if (_ID == sEff.poisoned)
						status_effect_list[| i].turns -= 1;
					else
						status_effect_list[| i].turns += _turns;
				}
			}
		}
		
		else
			ds_list_add(status_effect_list, new StatusEffect(_ID, _turns));
	}
}