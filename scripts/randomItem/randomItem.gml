/// @function                 randomItem(_tags);
/// @param {array}  _tags     A single string or array or tags for which item to get
/// @description              Returns a random item with the tags specified
function randomItem(_tags){
	var _itemList = tag_get_asset_ids(_tags, asset_object);
	return _itemList[irandom(array_length(_itemList) - 1)];
}