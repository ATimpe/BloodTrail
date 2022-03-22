// Returns the amount of an object in a certain deck

function objInDeckCount(_deck, _objIndex){
	var _count = 0;
	
	for (var i = 0; i < ds_list_size(_deck.d); i++) {
		with (_deck.d[| i]) {
			if (object_index == _objIndex)
				_count++;
		}
	}
	
	return _count;
}