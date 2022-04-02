// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function encounterTrade(){
	startGameState(gameState.trading);
	global.encounter = encounter.trader;
	if (global.trade_blocked) {
		runTextFile("trade_start_notrade1.txt", function() { 
			endGameState(gameState.trading);
			stateBTollStart();
		});
	}
	else {
		runTextFile("trade_start1.txt", function() { 
			if (!global.trade_expl) {
				runTextFile("trade_expl1.txt", function() {
					global.trade_expl = true;
					global.game_state = gameState.trading;
				});
			} else {
				global.game_state = gameState.trading;
			}
		});
	}
}

function encounterTradeEnd(){
	if (global.trade_blocked) {
		runTextFile("trade_end_poison1.txt", function() { 
			endGameState(gameState.trading);
			stateBTollStart();
		});
	}
	
	else {
		runTextFile("trade_end1.txt", function() { 
			endGameState(gameState.trading);
			stateBTollStart();
		});
	}
}