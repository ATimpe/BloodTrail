// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function newGold(_gold){
	var _goldObj = instance_create_layer(0, 0, layer, obj_gold);
	with (_goldObj) {
		gold = _gold;
	}
	return _goldObj;
}