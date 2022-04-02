// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function encounterBear() {
	global.encounter = encounter.bear;
	with (obj_item_manager) {
		setDeckHidden(player_inv);
		refreshItemDisplayBottom(player_hand);
	}
	runTextFile("bear_start1.txt");
}

function encounterBearFight() {
	runTextFile("bear_fight1.txt", function() {
		with (obj_game_manager) {
			enemy_atk = 3;
		}
		startGameState(gameState.fight);
	});
}

function encounterBearPass() {
	runTextFile("bear_pass1.txt", stateBTollStart);
}

function encounterBearEnd() {
	with (obj_game_manager) {
		if (fight_difference > 0) {
			runTextFile("bear_fight_win1.txt", function() {
				addItem(newCard(obj_card_warrior), obj_item_manager.player_hand);
				endGameState(gameState.fight);
				stateBTollStart();
			});
		} else if (fight_difference == 0) {
			runTextFile("bear_fight_tie1.txt", function() {
				endGameState(gameState.fight);
				stateBTollStart();
			});
		} else if (fight_difference < 0) {
			runTextFile("bear_fight_loss1.txt", function() {
				endGameState(gameState.fight);
				stateBTollStart();
			});
		}
	}
}