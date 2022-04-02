/// @desc Card variables

event_inherited();

enum cardUse {
	active,     // The card must be used
	passive,    // The card grants passive effects
	single      // The card is used as soon at as it is gained
}

uses = 3;
card_type = cardUse.active;
card_activated = false;
card_name = "";
card_desc = "";
display_desc = false;
price = 0;