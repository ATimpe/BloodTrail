// Generates a random chalice
function generateChalice(_probSpec, _probRare){
	var _roll = random(100);
	// Trader has 2 Chalices and 2 Cards -- 7%
	/*
	if (_roll < _probRare) {
		// Returns a rare chalice
		return randomItem("chal_rare");
	}*/
	// Trader has 2 Chalices and 1 card -- 23%
	//else if (_roll < _probRare + _probSpec) {
		// Returns a specail chalice
	//}
	// Trader has 1 Chalice and 2 cards -- 70%
	//else {
		return randomItem("chal_common");
	//}
}