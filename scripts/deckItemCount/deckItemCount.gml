// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function deckItemCount(_deck){
	var _count = 0;
	
	for (var i = 0; i < ds_list_size(_deck.d); i++) {
		if (_deck.d[| i].object_index != obj_itemslot)
			_count++;
	}
	
	return _count;
}