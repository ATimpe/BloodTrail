// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Deck(_items) constructor {
	d = ds_list_create(); // The list for the deck
	for (var i = 0; i < array_length(_items); i++)
		ds_list_add(d, _items[i]);
	s = array_length(_items);       // Size of the deck
	f = false;                      // If the deck has a floating item
}