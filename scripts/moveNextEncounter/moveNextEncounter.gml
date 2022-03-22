// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moveNextEncounter(_encounter){
	switch(_encounter) {
		case encounter.trader:
			encounterTrade();
			break;
		
		case encounter.itemPick:
			encounterItemPick();
			break;
		
		case encounter.chalMan:
			encounterChalMan();
			break;
	}
}