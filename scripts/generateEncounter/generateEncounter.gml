// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateEncounter(){
	var _encounters = [encounter.trader, encounter.itemPick, encounter.chalMan];
	return _encounters[irandom(array_length(_encounters) - 1)];
}