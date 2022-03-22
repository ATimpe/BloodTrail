/// This function will place the various cards on screen depending on what the current state of the game is
function refreshItemDisplay(_deck1, _deck2){
	var _camW = camera_get_view_width(view_camera[0]);
	var _camH = camera_get_view_height(view_camera[0]);
	var _centerY = _camH / 2;           // The Y of the center of the screen
	var _centerX =_camW / 2;            // The X of the center of the screen
	var _itemW = _camW / 9;              // The Width of each item
	var _itemH = _camH / 4;             // The Height of each item
	var _itemPadding = _itemW / 5;                    // How much padding each card needs
	// The amount of pixels the card are from the Y center
	var _deck1Y = _centerY - _camH / 12 - _itemH;  
	var _deck2Y = _centerY +_camH / 12;
	// Takes the amount of items in the list and offsets the starting X value by the width of the 
	var _deck1X = _centerX - (_itemW * _deck1.s + _itemPadding * (_deck1.s - 1)) / 2;
	var _deck2X = _centerX - (_itemW * _deck2.s + _itemPadding * (_deck2.s - 1)) / 2;
	var i;
	for (i = 0; i < ds_list_size(_deck1.d); i++) {
		// Iterates through the first list and places them from the center 1 at a time
		with (_deck1.d[| i]) {
			x = _deck1X + (_itemPadding * (i + 1)) + _itemW * i;
			y = _deck1Y;
		}
	}
	for (i = 0; i < ds_list_size(_deck2.d); i++) {
		// Iterates through the second list and places them from the center 1 at a time
		with (_deck2.d[| i]) {
			x = _deck2X + (_itemPadding * (i + 1)) + _itemW * i;
			y = _deck2Y;
		}
	}
}

function refreshItemDisplayBottom(_deck){
	var _camW = camera_get_view_width(view_camera[0]);
	var _camH = camera_get_view_height(view_camera[0]);
	var _centerY = _camH / 2;           // The Y of the center of the screen
	var _centerX = _camW / 2;            // The X of the center of the screen
	var _itemW = _camW / 9;              // The Width of each item
	var _itemH = _camH / 4;             // The Height of each item
	var _itemPadding = _itemW / 5;                    // How much padding each card needs
	// The amount of pixels the card are from the Y center
	var _deckY = _centerY + _camH / 12;
	// Takes the amount of items in the list and offsets the starting X value by the width of the 
	var _deckX = _centerX - (_itemW * _deck.s + _itemPadding * (_deck.s - 1)) / 2;
	var i;
	for (i = 0; i < ds_list_size(_deck.d); i++) {
		// Iterates through the second list and places them from the center 1 at a time
		with (_deck.d[| i]) {
			x = _deckX + (_itemPadding * (i + 1)) + _itemW * i;
			y = _deckY;
		}
	}
}

function refreshItemDisplayState(_state){
	with (obj_item_manager) {
		switch(_state) {
			case gameState.bToll:
				refreshItemDisplayBottom(player_hand);
				break;
			
			case gameState.invSort:
				refreshItemDisplay(player_hand, player_inv);
				break;
			
			case gameState.trading:
				refreshItemDisplay(npc_hand, player_hand);
				break;
		}
	}
}

// A deck or list of items to be placed off screen so the player cannot interact with them anymore
function setDeckHidden(_itemDeck) {
	for (var i = 0; i < ds_list_size(_itemDeck.d); i++) {
		// Iterates through the second deck and places them from the center 1 at a time
		with (_itemDeck.d[| i]) {
			x = 0;
			y = window_get_height();
		}
	}
}