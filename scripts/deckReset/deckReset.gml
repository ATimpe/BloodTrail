// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function deckReset(_deck){
	for (var i = 0; i < ds_list_size(_deck.d); i++)
		instance_destroy(_deck.d[| i]);
	
	ds_list_clear(_deck.d);
	_deck.s = 0;
	_deck.f = false;
}