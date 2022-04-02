/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < ds_list_size(status_effect_list); i++) {
	delete status_effect_list[| i];
}

ds_list_destroy(status_effect_list);