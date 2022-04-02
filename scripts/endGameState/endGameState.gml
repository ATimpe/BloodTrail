// called when switching between game states
function endGameState(_state){
	switch (_state) {
		case gameState.trading:
			instance_destroy(obj_trade_btn);
			with (obj_item_manager) {
				setDeckHidden(npc_hand);
				deckReset(npc_hand);
			}
			instance_destroy(obj_trade_manager);
			break;
		
		case gameState.bToll:
			with (obj_game_manager) {
				blood_drank = 0;
			}
			break;
		
		case gameState.invSort:
			instance_destroy(obj_invsort_btn);
			with (obj_item_manager) { 
				ds_list_clear(items_selected_list);
			}
			break;
		
		case gameState.itemPick:
			with (obj_item_manager) { 
				deckReset(npc_hand);
				setDeckHidden(npc_hand);
			}
			break;
		
		case gameState.fight:
			instance_destroy(obj_fight_btn);
			with (obj_game_manager) {
				enemy_atk = 0;
				fight_difference = 0;
				fight_start = false;
				player_fight_roll = 0;
			}
			break;
	}
	
	deselectAllItems();
}