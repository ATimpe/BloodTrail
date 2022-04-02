// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stateBTollStart(){
	startGameState(gameState.bToll);
	if (!canDrinkBlood())
		runTextFile("btoll_noblood1.txt", function() { 
			global.game_state = gameState.bToll;
			if (!global.btoll_expl) {
				runTextFile("btoll_expl1.txt", function() { 
					global.game_state = gameState.bToll;
				});
				global.btoll_expl = true;
			} else if (!global.bloodreserve_expl) {
				runTextFile("bloodreserve_expl1.txt", function() {
					global.bloodreserve_expl = true;
					global.game_state = gameState.bToll;
				});
			}
		});
	else {
		runTextFile("btoll_start1.txt", function() { 
			global.game_state = gameState.bToll;
			if (!global.btoll_expl) {
				runTextFile("btoll_expl1.txt", function() { 
					global.game_state = gameState.bToll;
			
				});
				global.btoll_expl = true;
			}
		});
	}
}

function stateBTollEnd(){
	runTextFile("btoll_end1.txt", function() { 
		endGameState(gameState.bToll);
		stateInvSortStart();
	});
}