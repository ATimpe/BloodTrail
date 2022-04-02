// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isItemInDeck(_item, _deck){
	return ds_list_find_index(_deck.d, _item) != -1;
}

function isObjInDeck(_objIndex, _deck){
	for (var i = 0; i < ds_list_size(_deck.d); i++) {
		if (_deck.d[| i].object_index == _objIndex)
			return true;
	}
	
	return false;
}

// Used for if you want to find if the deck has any children of a certain parent (also returns true if its the parent itself)
function isObjChildInDeck(_objIndex, _deck){
	for (var i = 0; i < ds_list_size(_deck.d); i++) {
		if (object_is_ancestor(_deck.d[| i].object_index, _objIndex))
			return true;
	}
	
	return false;
}