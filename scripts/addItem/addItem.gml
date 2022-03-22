// Adds item to a deck
function addItem(_item, _deck){
	with (obj_item_manager) {
		if (isObjInDeck(obj_itemslot, _deck)) {
			for (var i = 0; i < ds_list_size(_deck.d); i++) {
				if (_deck.d[| i].object_index == obj_itemslot) {
					instance_destroy(_deck.d[| i]);
					_deck.d[| i] = _item;
					break;
				}
			}
		}
		
		else if (!_deck.f) {
			setFloatItem(_item, _deck);
		}
		
		else {
			show_debug_message("item could not fit in deck");
		}
	}
}