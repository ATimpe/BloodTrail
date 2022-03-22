// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function newChalice(_obj, _blood){
	var _chal = instance_create_layer(0, 0, layer, _obj);
	with (_chal) {
		blood = _blood;
	}
	return _chal;
}