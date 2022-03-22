// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setDeckSize(_deck, _size){
	_deck.s = _size;
	
	// Deletes items if there are more than needed
	for (var i = 0; ds_list_size(_deck.d) - _deck.f > _deck.s; i++)
		ds_list_delete(_deck.d, i);

	// Adds itemslot when there needs to be more items
	while (ds_list_size(_deck.d) - _deck.f < _deck.s)
		ds_list_add(_deck.d, instance_create_layer(0, 0, layer, obj_itemslot));
}