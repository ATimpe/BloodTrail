// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stateBToll(){
	startGameState(gameState.bToll);
	if (!canDrinkBlood())
		runTextFile("btoll_noblood1.txt", function() { global.game_state = gameState.bToll });
	else
		runTextFile("btoll_start1.txt", function() { global.game_state = gameState.bToll });
}

function stateBTollEnd(){
	runTextFile("btoll_end1.txt", function() { 
		endGameState(gameState.bToll);
		stateInvSort();
	});
}