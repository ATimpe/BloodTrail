/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (mouse_over && mouse_check_button_pressed(global.select2) && global.game_state == card_state_usable) {
	with (obj_game_manager) {
		blood_drank++;
	}
	
	destroyItem(id);
}