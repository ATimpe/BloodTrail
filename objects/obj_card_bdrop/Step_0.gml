// Inherit the parent event
event_inherited();

if (card_activated && global.game_state == card_state_usable) {
	with (obj_game_manager) blood_drank++;
	
	uses--;
	
	if (uses <= 0)
		destroyItem(id);
}