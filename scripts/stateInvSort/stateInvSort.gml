// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stateInvSort(){
	startGameState(gameState.invSort);
}

function stateInvSortEnd(){
	endGameState(gameState.invSort);
	// Move to next encounter
	runTextFile("invsort_end1.txt", function() { with (obj_game_manager) { event_perform(ev_other, ev_user0); } });
}