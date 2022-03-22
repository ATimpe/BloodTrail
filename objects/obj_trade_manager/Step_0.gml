/// @description Insert description here
// You can write your code in this editor

var _select1 = mouse_check_button_pressed(global.select1);
var _select2 = mouse_check_button_pressed(global.select2);

if (global.game_state == gameState.trading) {
	if (_select1 && position_meeting(mouse_x, mouse_y, obj_item)) {
		var _offerChange = 0; // How much the offer changes
		// instance_place finds the item that the user is clicking on
		var _selectedItem = instance_position(mouse_x, mouse_y, obj_item);
		if (_selectedItem == noone)
			exit;
		// Gold is handled differently. Every time its clicked it adds 1 gold to the trade
		if (_selectedItem.object_index == obj_gold) {
			with (_selectedItem) {
				if (gold - gold_offer > 0) {
					gold_offer++;
					_offerChange++;
					selected = true;
				}
			}
		}
		else if (_selectedItem.object_index != obj_itemslot) {
			// Deselcting an item from the player's hand
			if (ds_list_find_index(player_offer_list, _selectedItem) != -1) {
				_offerChange -= deselectItemTrade(_selectedItem, player_offer_list);
			}
			// Deselecting an item from the trader's hand
			else if (ds_list_find_index(npc_offer_list, _selectedItem) != -1) {
				_offerChange -= deselectItemTrade(_selectedItem, npc_offer_list);
			}
			// Selecting an item for trade
			else {
				if (isItemInDeck(_selectedItem, obj_item_manager.player_hand)) {
					ds_list_add(player_offer_list, _selectedItem);
					with (_selectedItem) { 
						_offerChange += price;
						selected = true;
					}
				}
					
				if (isItemInDeck(_selectedItem, obj_item_manager.npc_hand)) {
					ds_list_add(npc_offer_list, _selectedItem);
					with (_selectedItem) { 
						_offerChange += price;
						selected = true;
					}
				}
			}
		}
		var _playerOffInc = 0;
		var _traderOffInc = 0;
		// If the selected item is in the players hand
		if (isItemInDeck(_selectedItem, obj_item_manager.player_hand)) {
			_playerOffInc += _offerChange;
		}
		
		// If the selected item is in the traders hand
		else if (isItemInDeck(_selectedItem, obj_item_manager.npc_hand)) {
			_traderOffInc += _offerChange;
		}
			
		player_offer += _playerOffInc;
		npc_offer += _traderOffInc;
	}
		
	if (_select2 && position_meeting(mouse_x, mouse_y, obj_gold)) {
		var _offerChange = 0;
		var _selectedItem = instance_position(mouse_x, mouse_y, obj_gold);
		with (instance_position(mouse_x, mouse_y, obj_gold)) {
			if (gold_offer > 0) {
				gold_offer--;
				_offerChange--;
				if (gold_offer <= 0)
					selected = false;
			}
		}
		var _playerOffInc = 0;
		var _traderOffInc = 0;
		
		with (obj_item_manager) {
			// If the selected item is in the players hand
			if (isItemInDeck(_selectedItem, player_hand)) {
				_playerOffInc += _offerChange;
			}
		
			// If the selected item is in the traders hand
			else if (isItemInDeck(_selectedItem, npc_hand)) {
				_traderOffInc += _offerChange;
			}
		}
			
		player_offer += _playerOffInc;
		npc_offer += _traderOffInc;
	}
}