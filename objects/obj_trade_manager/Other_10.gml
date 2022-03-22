/// @desc Trade

var _playerOfferList = player_offer_list;
var _npcOfferList = npc_offer_list;

with (obj_item_manager) {
	var i, _playerGold = 0, _npcGold = 0, _newGold;
	for (i = 0; i < ds_list_size(player_hand.d); i++) {
		// If the selected object is gold, take the gold from the object and place it into the trade pool
		// Don't remove the gold object from the list since you want to keep in in your inventory unless
		// It was all your gold, then just remove the object
		if (player_hand.d[| i].object_index == obj_gold) {
			with (player_hand.d[| i]) {
				_playerGold += gold_offer;
				gold -= gold_offer;
				gold_offer = 0;
				if (gold <= 0)
					with (obj_item_manager) { destroyItem(player_hand.d[| i]); }
			}
		}
	}
	
	// Removes item from player_hand and replaces it with an empty item slot
	for (i = 0; i < ds_list_size(_playerOfferList); i++)
		player_hand.d[| ds_list_find_index(player_hand.d, _playerOfferList[| i])] = instance_create_layer(0, 0, layer, obj_itemslot);
			
	for (i = 0; i < ds_list_size(npc_hand.d); i++) {
		if (npc_hand.d[| i].object_index == obj_gold) {
			with (npc_hand.d[| i]) {
				_npcGold += gold_offer;
				gold -= gold_offer;
				gold_offer = 0;
				if (gold <= 0)
					with (obj_item_manager) { destroyItem(npc_hand.d[| i]); }
			}
		}
	}
	
	for (i = 0; i < ds_list_size(_npcOfferList); i++)
		npc_hand.d[| ds_list_find_index(npc_hand.d, _npcOfferList[| i])] = instance_create_layer(0, 0, layer, obj_itemslot);
			
	// Places items in the opposite inventory's empty item slots
	for (i = 0; i < ds_list_size(_playerOfferList); i++)
		addItem(_playerOfferList[| i], npc_hand);
			
	for (i = 0; i < ds_list_size(_npcOfferList); i++)
		addItem(_npcOfferList[| i], player_hand);
			
	// Places the npc gold in your gold object
	if (isObjInDeck(obj_gold, player_hand)) {
		for (i = 0; i < ds_list_size(player_hand.d); i++) {
			with (player_hand.d[| i]) {
				if (object_index == obj_gold) {
					gold += _npcGold;
				}
			}
		}
	} else if (_npcGold > 0) {
		_newGold = instance_create_layer(0, 0, layer, obj_gold)
		with (_newGold) {
			gold = _npcGold;
		}
		addItem(_newGold, player_hand);
	}
		
	if (isObjInDeck(obj_gold, npc_hand)) {
		for (i = 0; i < ds_list_size(npc_hand.d); i++) {
			with (npc_hand.d[| i]) {
				if (object_index == obj_gold) {
					gold += _playerGold;
				}
			}
		}
	} else if (_playerGold > 0) {
		_newGold = instance_create_layer(0, 0, layer, obj_gold);
		with (_newGold) {
			gold = _playerGold;
		}
		addItem(_newGold, npc_hand);
	}
		
	refreshItemDisplay(npc_hand, player_hand);
	encounterTradeEnd();
}