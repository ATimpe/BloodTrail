// Generates a random chalice
function generateCard(_probSpec, _probRare){
	var _roll = random(100);
	// Trader has 2 Chalices and 2 Cards -- 7%
	if (_roll < _probRare) {
		// Returns a rare chalice
		return randomItem("card_rare");
	}
	// Trader has 2 Chalices and 1 card -- 23%
	//else if (_roll < _probRare + _probSpec) {
		// Returns a specail chalice
	//}
	// Trader has 1 Chalice and 2 cards -- 70%
	else {
		var _card = randomItem("card_common");
		return _card;
	}
}