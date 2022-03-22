// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function newCard(_obj, _uses = 0){
	var _card = instance_create_layer(0, 0, layer, _obj);
	with (_card) {
		if (_uses > 0)
			uses = _uses;
	}
	return _card;
}