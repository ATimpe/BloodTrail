// Returns the deck the item is from
function getDeckItem(_item) {
	with (obj_item_manager) {
		var i = 0;
		for (i = 0; i < ds_list_size(player_hand.d); i++) {
			if (player_hand.d[| i] == _item)
				return player_hand;
		}
		
		for (i = 0; i < ds_list_size(player_inv.d); i++) {
			if (player_inv.d[| i] == _item)
				return player_inv;
		}
		
		for (i = 0; i < ds_list_size(npc_hand.d); i++) {
			if (npc_hand.d[| i] == _item)
				return npc_hand;
		}
		
		show_debug_message("item not located in any decks");
		return -1;
	}
}