// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function deselectItemTrade(_item, _list){
	ds_list_delete(_list, ds_list_find_index(_list, _item));
	with (_item) {
		selected = false;
		return price;
	}
}