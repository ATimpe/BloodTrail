// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function encounterStump(){
	startGameState(gameState.stump);
	global.encounter = encounter.stump;
	runTextFile("stump_start1.txt", function() {
		global.game_state = gameState.stump;
	});
}

function encounterStumpEnd(){
	if(!isObjChildInDeck(obj_cup, obj_item_manager.player_hand)) {
		runTextFile("stump_fail1.txt", function() {
			endGameState(gameState.stump);
			stateBTollStart();
		});
	} else {
		runTextFile("stump_end1.txt", function() {
			endGameState(gameState.stump);
			stateBTollStart();
		});
	}
	
}