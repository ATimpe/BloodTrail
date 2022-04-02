if (global.game_state == gameState.text)
	exit;

event_inherited();

if (pressed) {
	if (canTrade())
		with (obj_trade_manager) { event_perform(ev_other, ev_user0); }
	else
		runTextFile("trade_fail1.txt", function() { global.game_state = gameState.trading });
}