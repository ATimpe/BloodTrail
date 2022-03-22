// This is used whenever an item is destoryed like for example a card that has been used all the way
// or items are stolen. It destroys the object and creates an empty itemslot in its place
// _list can be either the actual ds_list or a string 
function destroyItem(_item){
	var _deck = getDeckItem(_item);
	var _index = ds_list_find_index(_deck.d, _item);
	if (_deck.f && _item == getFloatItem(_deck)) {
		ds_list_delete(_deck.d, _index);
		_deck.f = false;
	} else 
		_deck.d[| _index] = instance_create_layer(0, 0, layer, obj_itemslot);
	instance_destroy(_item);
	
	refreshItemDisplayState(global.game_state);
}