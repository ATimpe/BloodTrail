/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (card_activated && !selected) {
	with (obj_game_manager) {
		removeStatusEffect(sEff.poisoned);
	}
	
	uses--;
	
	if (uses <= 0)
		destroyItem(id);
}