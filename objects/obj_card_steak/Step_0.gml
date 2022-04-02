// Inherit the parent event
event_inherited();

if (card_activated && card_state_usable == global.game_state) {
	with (obj_game_manager) {
		blood_drank++;
	}
	
	uses--;
	
	if (uses <= 0)
		destroyItem(id);
}

price = base_price * uses;