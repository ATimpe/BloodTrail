// called when switching between game states
function startGameState(_nextState){
	global.game_state = _nextState;
	
	switch (_nextState) {
		case gameState.trading:
			with (obj_item_manager) {
				generateTraderHand();
				instance_create_layer(32, 64, layer, obj_trade_btn);
				setDeckHidden(player_inv);
				refreshItemDisplay(npc_hand, player_hand);
				instance_create_layer(0, 0, layer, obj_trade_manager);
			}
			break;
		
		case gameState.bToll:
			with (obj_item_manager) {
				setDeckHidden(npc_hand);
				setDeckHidden(player_inv);
				refreshItemDisplayBottom(player_hand);
			}
			break;
		
		case gameState.invSort:
			with (obj_item_manager) {
				instance_create_layer(32, 32, layer, obj_invsort_btn);
				setDeckHidden(npc_hand);
				refreshItemDisplay(player_hand, player_inv);
			}
			break;
		
		case gameState.itemPick:
			with (obj_item_manager) {
				setDeckHidden(player_inv);				
				refreshItemDisplay(npc_hand, player_hand);
			}
			break;
		
		case gameState.stump:
			with (obj_item_manager) {
				setDeckHidden(player_inv);	
				setDeckHidden(npc_hand);
				refreshItemDisplayBottom(player_hand);
			}
			break;
		
		case gameState.fight:
			with (obj_item_manager) {
				setDeckHidden(player_inv);	
				setDeckHidden(npc_hand);
				refreshItemDisplayBottom(player_hand);
				instance_create_layer(32, 32, layer, obj_fight_btn);
			}
		
		case gameState.dropItem:
			with (obj_item_manager) {
				setDeckHidden(player_inv);	
				setDeckHidden(npc_hand);
				refreshItemDisplayBottom(player_hand);
			}
	}
}