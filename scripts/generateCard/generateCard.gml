// Generates a random chalice
// If Unique is true you must provide a list
// WARNING: Don't use unique on rare cards for now since there is only 2 it could freeze the game
function generateCard(_probSpec, _probRare, _unique = false, _deck = -1){
	var _roll = random(100);
	// Trader has 2 Chalices and 2 Cards -- 7%
	if (_roll < _probRare) {
		// Returns a rare chalice
		/*
		if (_unique) {
			var _randCard = randomItem("card_rare");
			while (isObjInDeck(_randCard, _deck))
				_randCard = randomItem("card_rare");
			return _randCard;
		} else*/
			return randomItem("card_rare");
	}
	// Trader has 2 Chalices and 1 card -- 23%
	else if (_roll < _probRare + _probSpec) {
		// Returns an uncommon card
		return randomItem("card_uncommon");
	}
	// Trader has 1 Chalice and 2 cards -- 70%
	else {
		if (_unique) {
			var _randCard = randomItem("card_common");
			while (isObjInDeck(_randCard, _deck))
				_randCard = randomItem("card_common");
			return _randCard;
		} else
			return randomItem("card_common");
	}
}