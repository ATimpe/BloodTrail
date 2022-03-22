// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatusEffect(_SE, _turns) constructor {
	ID = _SE;
	str = getStr(ID);
	turns = _turns;
	
	static getStr = function(_ID) {
		switch (_ID) {
			case sEff.bToll:
				return "Blood Toll";
			
			case sEff.sick:
				return "Sick";
			
			case sEff.poisoned:
				return "Poisoned";
		}
	}
}