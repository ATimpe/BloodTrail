// Returns whether or not the player can drink blood during the blood toll state

// NOTE This does not check for the player's pack. It would be interesting to add something to
// Allow the player to use blood from the pack but at the moment it only works with the hand
function canDrinkBlood(){
	with (obj_item_manager) {
		// If the player has a blood drop card
		if (isObjInDeck(obj_card_bdrop, player_hand) || isObjInDeck(obj_card_steak, player_hand))
			return true;
		
		// If the player has a chalice with blood in it
		for (var i = 0; i < ds_list_size(player_hand.d); i++) {
			if (object_is_ancestor(player_hand.d[| i].object_index, obj_cup)) {
				if (player_hand.d[| i].blood > 0)
					return true;
			}
		}
		
		// If none of the above is true, then the player cannot drink blood
		return false;
	}
}