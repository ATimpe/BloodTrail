// Inherit the parent event
event_inherited();

if (card_activated && !selected) {
	with (obj_game_manager) {
		blood_reserve += 2;
	}
	
	uses--;
	
	if (uses <= 0)
		destroyItem(id);
}