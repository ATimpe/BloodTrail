// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function goldAdd(_gold, _deck){
	// Searches through the deck to find gold and adds it to the first one it finds
	for (var i = 0; i < ds_list_size(_deck.d); i++) {
		if (_deck.d[| i].object_index == obj_gold) {
			_deck.d[| i].gold += _gold;
			return;
		}
	}
	
	// If it can't find any, it creates a new one
	addItem(newGold(_gold), _deck);
}