// When 2 gold items are slected they combine into 1 and the first is deleted
function combineGold(_gold1, _gold2, _gold1List){
	var _goldSum = 0;
	var _gold1Index = ds_list_find_index(_gold1List, _gold1);
	// Adds the amount of gold from the first item and then deleted it
	with (_gold1) {
		_goldSum += gold;
		instance_destroy();
	}
	
	// Takes the gold from the first and gives it to the second
	with (_gold2) {
		gold += _goldSum;
	}
	
	// replaces the deleted gold with an empty item
	_gold1List[| _gold1Index] = instance_create_layer(0, 0, layer, obj_item);
}