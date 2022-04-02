// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Option(_str, _func) constructor {
	str = _str;
	func = _func;
	
	static selectOption = function() {
		script_execute(func);
	}
}