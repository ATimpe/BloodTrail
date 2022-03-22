// called when switching between game states
function startGameState(_nextState){
	global.game_state = _nextState;
	
	switch (_nextState) {
		case gameState.trading:
			generateTraderHand();
			instance_create_layer(0, 20, layer, obj_trade_btn);
			with (obj_item_manager) {
				setDeckHidden(player_inv);
				refreshItemDisplay(npc_hand, player_hand);
			}
			instance_create_layer(0, 0, layer, obj_trade_manager);
			break;
		
		case gameState.bToll:
			with (obj_item_manager) {
				setDeckHidden(npc_hand);
				setDeckHidden(player_inv);
				refreshItemDisplayBottom(player_hand);
			}
			break;
		
		case gameState.invSort:
			var _test = instance_create_layer(0, 0, layer, obj_invsort_btn);
			with (obj_item_manager) {
				setDeckHidden(npc_hand);
				refreshItemDisplay(player_hand, player_inv);
			}
			break;
		
		case gameState.itemPick:
			with (obj_item_manager) {
				setDeckHidden(player_inv);
				deckReset(npc_hand);				
				refreshItemDisplay(npc_hand, player_hand);
			}
	}
}