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