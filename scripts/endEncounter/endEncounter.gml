// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function endEncounter(){
	if (global.intro) {
		with (obj_trail_start) { 
			first_card_picked = true;
			// performs the step event imedeatly
			event_perform(ev_step, ev_step);
		}
	}
	
	else {
		switch(global.encounter) {
			case encounter.chalMan:
				encounterChalManEnd();
				break;
		
			case encounter.itemPick:
				encounterItemPickEnd();
				break;
		
			case encounter.stump:
				encounterStumpEnd();
				break;
		
			case encounter.trader:
				encounterTradeEnd();
				break;
			
			case encounter.bear:
				encounterBearEnd();
			
			case encounter.robber:
				encounterRobberEnd();
		}
	}
}