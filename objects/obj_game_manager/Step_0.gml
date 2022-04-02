/// @desc Game State Switch

if (keyboard_check_pressed(ord("R")))
	game_restart();

switch (global.game_state) {
	case gameState.bToll:
		stateBToll();
		break;
	
	case gameState.stump:
		stateStump();
		break;
	
	case gameState.fight:
		stateFight();
		break;
	
	case gameState.dropItem:
		stateDropItem();
		break;
}