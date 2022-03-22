// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function encounterChalMan(){
	generateItemPick(encounter.chalMan);
	startGameState(gameState.itemPick);
	global.encounter = encounter.chalMan;
	runTextFile("chalman_start1.txt", function() {
		global.game_state = gameState.itemPick;
	});
}

function encounterChalManEnd(){
	runTextFile("chalman_start1.txt", function() {
		endGameState(gameState.itemPick);
		stateBToll();
	});
}