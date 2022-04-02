// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stateInvSortStart(){
	startGameState(gameState.invSort);
	if (!global.invsort_expl) {
		runTextFile("invsort_expl1.txt", function() { 
			global.game_state = gameState.invSort;
			
		});
		global.invsort_expl = true;
	}
}

function stateInvSortEnd(){
	endGameState(gameState.invSort);
	// Move to next encounter
	with (obj_game_manager) {
		if (hasStatusEffect(sEff.bleeding))
			blood_reserve--;
		
		if (blood_reserve < blood_reserve_max && !hasStatusEffect(sEff.wounded))
			blood_reserve++;
		if (blood_reserve > blood_reserve_max)
			blood_reserve--;
			
		if (blood_reserve <= 0) {
			runTextFile("death_bleedout1.txt", function() {
				death();
			});
			global.dead = true;
		}
		
		decStatusEffects();
		for (var i = 0; i < ds_list_size(status_effect_list) && !global.dead; i++) {
			if (status_effect_list[| i].turns == 0) {
				// When the turns hit 0 and its poison, the player dies
				if (status_effect_list[| i].ID == sEff.poisoned) {
					runTextFile("death_poison1.txt", function() { death(); });
					global.dead = true;
				}
				
				// When the turns are 0 for the status effect, delete it
				else {
					delete status_effect_list[| i];
					ds_list_delete(status_effect_list, i);
				}
			}
		}
	}
	
	if (!global.dead)
		runTextFile("invsort_end1.txt", function() { with (obj_game_manager) { event_perform(ev_other, ev_user0); } });
}