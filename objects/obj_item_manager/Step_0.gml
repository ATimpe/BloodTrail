/// @description Insert description here
// You can write your code in this editor

var _select1 = mouse_check_button_pressed(global.select1);
var _select2 = mouse_check_button_pressed(global.select2);

switch (global.game_state) {
	case gameState.invSort:
		if (_select1 && position_meeting(mouse_x, mouse_y, obj_item)) {
			// instance_place finds the item that the user is clicking on
			var _selectedItem = instance_position(mouse_x, mouse_y, obj_item);
			if (player_hand.f) {
				if ((!isInvFull() && _selectedItem.object_index == obj_itemslot) || isInvFull()) {
					var _deck = getDeckItem(_selectedItem);
					var _index = ds_list_find_index(_deck.d, _selectedItem);
					instance_destroy(_deck.d[| _index]);
					_deck.d[| _index] = player_hand.d[| ds_list_size(player_hand.d) - 1];
					removeFloatItem(player_hand);
					refreshItemDisplay(player_hand, player_inv);
				}
			} else {
				with (_selectedItem) { selected = !selected;}
				// If the item is already currently selected, deselect it
				if (ds_list_find_index(items_selected_list, _selectedItem) == -1)
					ds_list_add(items_selected_list, _selectedItem);
				else
					ds_list_delete(items_selected_list, ds_list_find_index(items_selected_list, _selectedItem));
			}
		}
		
		if (ds_list_size(items_selected_list) > 1) {
			// Which decks the 2 cards are in
			var _deck1, _deck2;
			with (items_selected_list[| 0]) { 
				selected = false;
			}
			with (items_selected_list[| 1]) { 
				selected = false;
			}
			
			// Gets the decks from the game manager
			_deck1 = getDeckItem(items_selected_list[| 0]);
			_deck2 = getDeckItem(items_selected_list[| 1]);
			
			// If they are both from the same deck
			if (_deck1 == _deck2) {
				switchItems(ds_list_find_index(_deck1.d, items_selected_list[| 0]),
							ds_list_find_index(_deck2.d, items_selected_list[| 1]),
							_deck1);
			} else { // 2 different decks
				switchItemsDeck(ds_list_find_index(_deck1.d, items_selected_list[| 0]),
							ds_list_find_index(_deck2.d, items_selected_list[| 1]),
							_deck1, _deck2);
			}
			
			ds_list_clear(items_selected_list);
			refreshItemDisplay(player_hand, player_inv);
		}
		break;
	
	case gameState.bToll:
		break;
	
	// When the player gets to choose between a few itmes in an encounter
	case gameState.itemPick:
		if (_select1 && position_meeting(mouse_x, mouse_y, obj_item)) {
			var _selectedItem = instance_position(mouse_x, mouse_y, obj_item);
			// If the selected card is part of the npc's hand
			if (isItemInDeck(_selectedItem, npc_hand)) {
				addItem(_selectedItem, player_hand);
				ds_list_delete(npc_hand.d, ds_list_find_index(npc_hand.d, _selectedItem));
			}
			
			// Ends the item pick
			refreshItemDisplay(npc_hand, player_hand);
			deselectAllItems();
			if (global.intro)
				with (obj_trail_start) { 
					first_card_picked = true;
					// performs the step event imedeatly
					event_perform(ev_step, ev_step);
				}
			else {
				switch (global.encounter) {
					case encounter.itemPick:
						encounterItemPickEnd();
						break;
					
					case encounter.chalMan:
						encounterChalManEnd();
						break;
				}
			}
		}
		break;
	
	case gameState.trading:
		
		break;
}