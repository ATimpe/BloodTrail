/// @description Insert description here
// You can write your code in this editor

event_inherited();

enum cardUse {
	active,     // The card must be used
	passive,    // The card grants passive effects
	single      // The card is used as soon at as it is gained
}

uses = 3;
card_type = cardUse.active;
card_name = "Keen Perception";
card_desc = "Allows you to see someone elses Karma.";
price = 0;