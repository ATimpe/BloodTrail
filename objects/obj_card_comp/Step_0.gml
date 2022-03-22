/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (mouse_over && mouse_check_button_pressed(mb_right) && global.game_state == card_state_usable) {
	with (obj_game_manager) {
		encounter_display = true;
		compass_effect = 1;
	}
	
	uses--;
	if (uses <= 0)
		destroyItem(id);
}