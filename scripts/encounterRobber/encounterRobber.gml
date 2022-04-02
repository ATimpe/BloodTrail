// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function encounterRobber(){
	global.encounter = encounter.robber;
	with (obj_item_manager) {
		setDeckHidden(player_inv);
		refreshItemDisplayBottom(player_hand);
	}
	runTextFile("robber_start1.txt");
}

function encounterRobberSurrender(){
	runTextFile("robber_surrender1.txt", function() {
		startGameState(gameState.dropItem);
	});
}

function encounterRobberFight(){
	runTextFile("robber_fight1.txt", function() {
		with (obj_game_manager) {
			enemy_atk = 4;
		}
		startGameState(gameState.fight);
	});
}

function encounterRobberRun(){
	runTextFile("robber_run1.txt", function() {
		addStatusEff(sEff.wounded, 6);
		addStatusEff(sEff.bleeding, 3);
		/* maybe add later
		var _roll = irandom(1);
		
		if (_roll == 0) {
			runTextFile("robber_run_miss1.txt", stateBTollStart);
		} else if (_roll == 1) {
			runTextFile("robber_run_hit1.txt", function (){
				addStatusEff(sEff.wounded, 6);
				addStatusEff(sEff.wounded, 3);
			});
		}*/
	});
}

function encounterRobberEnd(){
	if (global.game_state == gameState.fight) {
		with (obj_game_manager) {
			if (fight_difference > 0) {
				runTextFile("robber_fight_win1.txt", function() {
					goldAdd(7, obj_item_manager.player_hand);
					endGameState(gameState.fight);
					stateBTollStart();
				});
			}
			if (fight_difference == 0) {
				runTextFile("robber_fight_tie1.txt", function() {
					endGameState(gameState.fight);
					stateBTollStart();
				});
			}
			if (fight_difference < 0) {
				runTextFile("robber_fight_loss1.txt", function() {
					// Steals one of the player's items at random
					with (obj_item_manager) {
						// Breaks if the deck is empty
						if (deckItemCount(player_hand) <= 0)
							break;
						
						var _rand = irandom(ds_list_size(player_hand.d) - 1);
					
						// If the random item is an itemslot it selects another one
						while (player_hand.d[| _rand].object_index == obj_itemslot)
							_rand = irandom(ds_list_size(player_hand.d) - 1);
					
						destroyItem(player_hand.d[| _rand]);
					}
					endGameState(gameState.fight);
					stateBTollStart();
				});
			}
		}
	} else if (global.game_state == gameState.dropItem) {
		runTextFile("robber_surrender_end1.txt", stateBTollStart);
	}
}