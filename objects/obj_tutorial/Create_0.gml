/// @description Insert description here
// You can write your code in this editor

state = 0;

runTextFile("tutorial1.txt", function() {
	with (obj_item_manager) {
		addItem(newChalice(obj_chal, 2), player_hand);
		refreshItemDisplayBottom(player_hand);
	}
	runTextFile("tutorial2.txt", function() {
		with (obj_item_manager) {
			addItem(newCard(obj_card_bdrop), player_hand);
			refreshItemDisplayBottom(player_hand);
		}
		runTextFile("tutorial3.txt", function() {
			with (obj_item_manager) {
				addItem(newGold(8), player_hand);
				refreshItemDisplayBottom(player_hand);
			}
			runTextFile("tutorial4.txt", function() {
				startGameState(gameState.trading);
				runTextFile("tutorial4.txt", function() {
					global.game_state = gameState.trading;
				});
			});
		});
	});
});

global.tutorial = true;

with (obj_item_manager) {
	refreshItemDisplayBottom(player_hand);
	setDeckHidden(player_inv);
	setDeckHidden(npc_hand);
}