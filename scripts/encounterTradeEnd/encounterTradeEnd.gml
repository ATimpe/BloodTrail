// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function encounterTradeEnd(){
	runTextFile("trade_end1.txt", function() { 
		endGameState(gameState.trading);
		stateBToll();
	});
}