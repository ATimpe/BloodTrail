/// @desc This object should be spawned at the start of each journey

first_card_picked = false;

runTextFile("intro1.txt", function() {
	with (obj_item_manager) {
		addItem(newChalice(obj_chal, 4), player_hand);
		refreshItemDisplayBottom(player_hand);
	}
	runTextFile("intro2.txt", function() {
		generateItemPick();
		startGameState(gameState.itemPick);
	});
});

global.intro = true;
with (obj_item_manager) {
	refreshItemDisplayBottom(player_hand);
	setDeckHidden(player_inv);
	setDeckHidden(npc_hand);
}