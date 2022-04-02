// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function encounterItemPick(){
	generateItemPick();
	startGameState(gameState.itemPick);
	global.encounter = encounter.itemPick;
	runTextFile("itempick_start1.txt", function() { 
		global.game_state = gameState.itemPick;
	});
}

function encounterItemPickEnd(){
	runTextFile("itempick_end1.txt", function() { 
		endGameState(gameState.itemPick);
		stateBTollStart();
	});
}