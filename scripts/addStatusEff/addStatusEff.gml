// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function addStatusEff(_ID, _turns){
	with (obj_game_manager) {
		ds_list_add(status_effect_list, new StatusEffect(_ID, _turns));
	}
}