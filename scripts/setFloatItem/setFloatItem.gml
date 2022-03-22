// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setFloatItem(_item, _deck){
	if (!_deck.f) {
		ds_list_add(_deck.d, _item);
		_deck.f = true;
	}
}