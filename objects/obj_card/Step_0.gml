/// @desc Card usage

// Inherit the parent event
event_inherited();

if (global.game_state != gameState.text) {
	if (mouse_over) {
		display_desc = true;
		obj_textbox.display_str = card_desc;
	}

	if (!mouse_over && display_desc) {
		obj_textbox.display_str = "";
		display_desc = false;
	}

	if (mouse_over 
		&& mouse_check_button_pressed(global.select2) 
		&& (isItemInDeck(id, obj_item_manager.player_hand) || isItemInDeck(id, obj_item_manager.player_inv)))
			card_activated = true;
	else 
		card_activated = false;
}