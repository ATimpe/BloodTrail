// Called by the game manager when items are to be switched
// _item1 and 2 are the items that should be switched. The IDs are their current place in the Hand
// Note IDs go beyond 0-3 when exhancing items in the Hand and the Inventory (ex. the ID of an item in the 2nd
// slot of the inventory would be 5)
function switchItems(_item1ID, _item2ID, _deck){
	if (_deck.d[| _item1ID].object_index == obj_gold && _deck.d[| _item2ID].object_index == obj_gold) {
		combineGold(_deck.d[| _item1ID], _deck.d[| _item2ID], _deck);
		return;
	}
	var _temp = _deck.d[| _item1ID];
	_deck.d[| _item1ID] = _deck.d[| _item2ID];
	_deck.d[| _item2ID] = _temp;
	
}

function switchItemsDeck(_item1ID, _item2ID, _deck1, _deck2) {
	if (_deck1.d[| _item1ID].object_index == obj_gold && _deck2.d[| _item2ID].object_index == obj_gold) {
		combineGold(_deck1.d[| _item1ID], _deck2.d[| _item2ID], _deck1);
		return;
	}
	var _temp = _deck1.d[| _item1ID];
	_deck1.d[| _item1ID] = _deck2.d[| _item2ID];
	_deck2.d[| _item2ID] = _temp;
}