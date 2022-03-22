/// @description Insert description here
// You can write your code in this editor

if (global.game_state == gameState.text)
	exit;

mouse_over = position_meeting(mouse_x, mouse_y, self);

if (mouse_over && mouse_check_button_pressed(global.select1) && !obj_item_manager.player_hand.f)
	stateInvSortEnd();

else if (mouse_over && mouse_check_button_pressed(global.select1) && obj_item_manager.player_hand.f)
	runTextFile("invsort_fail1.txt", function() { global.game_state = gameState.invSort });