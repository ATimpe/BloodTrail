if (global.game_state == gameState.text)
	exit;

// parent event
event_inherited();

// Inventory sort can only end if the player hand does not have a float item
if (pressed) {
	if (!obj_item_manager.player_hand.f)
		stateInvSortEnd();
	else
		runTextFile("invsort_fail1.txt", function() { global.game_state = gameState.invSort });
}
