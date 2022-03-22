/// @desc Game State Switch
var _select1 = mouse_check_button_pressed(global.select1);

switch (global.game_state) {
	case gameState.bToll:
		if (!canDrinkBlood() && _select1 && position_meeting(mouse_x, mouse_y, obj_chal)) {
			blood_reserve -= 3;
			with (instance_position(mouse_x, mouse_y, obj_chal)) {
				blood += 3;
			}
			runTextFile("btoll_bloodreserve1.txt", function() { global.game_state = gameState.bToll });
		} else if (_select1 && position_meeting(mouse_x, mouse_y, obj_chal)) {
			// instance_place finds the item that the user is clicking on
			var _selectedItem = instance_position(mouse_x, mouse_y, obj_chal);
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
					next_encounter = generateEncounter();
					stateBTollEnd();
				});
				drank_poison = false;
			} else {
				next_encounter = generateEncounter();
				stateBTollEnd();
			}
		}
		break;
}