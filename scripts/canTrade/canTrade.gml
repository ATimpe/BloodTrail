// Determines if you can trade based on the offer praces and how much inventory space you both have
function canTrade(){
	// If the trade is unbalanced, return false
	with (obj_trade_manager) {
		if (player_offer < npc_offer)
			return false;
	}
	
	var _playerOfferGold = false;   // Is the player offering gold
	var _npcOfferGold = false;      // Is the player offering gold
	var _playerGoldDestroy = 0;     // How many gold objects in the player hand will be destoryed
	var _npcGoldDestroy = 0;        // How many gold objects in the player hand will be destoryed
	
	with (obj_item_manager) {
		for (var i = 0; i < ds_list_size(player_hand.d); i++) {
			with (player_hand.d[| i]) {
				if (object_index == obj_gold) {
					// If the player is offering gold
					if (gold_offer > 0)
						_playerOfferGold = true;
					
					// If the gold object will be deleted during the trade
					if (gold_offer >= gold)
						_playerGoldDestroy += 1;
				}
			}
		}
		
		for (var i = 0; i < ds_list_size(npc_hand.d); i++) {
			with (npc_hand.d[| i]) {
				if (object_index == obj_gold) {
					// If the player is offering gold
					if (gold_offer > 0)
						_npcOfferGold = true;
					
					// If the gold object will be deleted during the trade
					if (gold_offer >= gold)
						_npcGoldDestroy += 1;
				}
			}
		}
		
		// If the gold in the offer will have to create a new item
		// This means one less gold will be destroyed to create a new one
		if (_npcOfferGold && objInDeckCount(player_hand, obj_gold) <= _playerGoldDestroy)
			_playerGoldDestroy -= 1;
		
		if (_playerOfferGold && objInDeckCount(npc_hand, obj_gold) <= _npcGoldDestroy)
			_npcGoldDestroy -= 1;
		
		// If there are enough empty spaces now accounting for how many empty spaces will be
		// added after gold objects have spent all their gold, the trade is valid
		return objInDeckCount(player_hand, obj_itemslot) + _playerGoldDestroy + ds_list_size(obj_trade_manager.player_offer_list) + !player_hand.f >= ds_list_size(obj_trade_manager.npc_offer_list)
			&& objInDeckCount(npc_hand, obj_itemslot) + _npcGoldDestroy + ds_list_size(obj_trade_manager.npc_offer_list) + !npc_hand.f >= ds_list_size(obj_trade_manager.player_offer_list);
	}
}