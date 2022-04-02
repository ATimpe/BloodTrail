// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getEncounterStr(_encounter){
	switch (_encounter) {
		case encounter.chalMan:
			return "Chalice Man";
		
		case encounter.trader:
			return "Trader";
		
		case encounter.itemPick:
			return "Tarot Woman";
		
		case encounter.stump:
			return "The Stump";
		
		case encounter.bear:
			return "The Bear";
		
		case encounter.robber:
			return "The Robber";
	}
}