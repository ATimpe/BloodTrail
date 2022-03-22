// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function removeFloatItem(_deck){
	if (_deck.f) {
		var _topId = ds_list_size(_deck.d) - 1;
		ds_list_delete(_deck.d, _topId);
		_deck.f = false;
	}
}