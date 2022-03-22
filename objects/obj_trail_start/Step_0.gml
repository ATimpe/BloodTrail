/// @description Insert description here
// You can write your code in this editor

if (first_card_picked) {
	endGameState(gameState.itemPick);
	runTextFile("intro3.txt", function() {
		with (obj_item_manager) {
			addItem(newGold(7), player_hand);
			refreshItemDisplayBottom(player_hand);
		}
		runTextFile("intro4.txt", function() {
			moveNextEncounter(generateEncounter());
			instance_destroy(obj_trail_start);
		});
	});
	first_card_picked = false;
}