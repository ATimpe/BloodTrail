/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (card_activated && global.game_state == card_state_usable && !selected) {
	with (obj_game_manager) {
		encounter_display = true;
		compass_effect = 1;
	}
	
	uses--;
	
	if (uses <= 0)
		destroyItem(id);
}