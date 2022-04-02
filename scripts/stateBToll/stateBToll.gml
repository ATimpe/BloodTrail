// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stateBToll(){
	var _select1 = mouse_check_button_pressed(global.select1);
	
	// If the player doesnt have any chalices, it will just give you a bdrop crad
	if (!canDrinkBlood() 
		&& !isObjChildInDeck(obj_cup, obj_item_manager.player_hand)
		&& blood_drank < blood_needed) {
		runTextFile("btoll_nocup1.txt", function() { 
			btollWound();
			addItem(newCard(obj_card_bdrop), obj_item_manager.player_hand);
			global.game_state = gameState.bToll;
			refreshItemDisplayState(gameState.bToll);
			if (obj_game_manager.blood_reserve <= 0) {
				global.dead = true;
				runTextFile("death_bloodreserve1.txt", function() {
					death();
				});
			}
		});
	}
		
	else if (!canDrinkBlood() && _select1 && position_meeting(mouse_x, mouse_y, obj_cup)) {
		btollWound();
		runTextFile("btoll_bloodreserve1.txt", function() {
			global.game_state = gameState.bToll;
			if (obj_game_manager.blood_reserve <= 0) {
				global.dead = true;
				runTextFile("death_bloodreserve1.txt", function() { 
					death();
				});
			}
		});
	} else if (_select1 && position_meeting(mouse_x, mouse_y, obj_cup)) {
		// instance_place finds the item that the user is clicking on
		var _selectedItem = instance_position(mouse_x, mouse_y, obj_cup);
		with (_selectedItem) { 
			if (blood <= 0) {
				// Does not allow you to use
				break;
			}
			blood--;
			with(obj_game_manager) { 
				blood_drank++;
				// If the chalice is poisoned
				if (_selectedItem.poisoned)
					drank_poison = true;
			}
		}
	}
		
	if (blood_drank >= blood_needed) {
		// Move to inventory sorting
		if (drank_poison) {
			runTextFile("btoll_poisoned1.txt", function() {
				addStatusEff(sEff.poisoned, 5);
				if (!global.poison_expl) {
					runTextFile("poison_expl1.txt", function() {
						global.poison_expl = true;
						next_encounter = generateEncounter();
						stateBTollEnd();
					});
				} else {
					next_encounter = generateEncounter();
					stateBTollEnd();
				}
			});
			drank_poison = false;
		} else {
			next_encounter = generateEncounter();
			stateBTollEnd();
		}
	}
}