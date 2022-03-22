/// @description Insert description here
// You can write your code in this editor

if (global.game_state == gameState.trading) {
	draw_text_ext(0, 0, "Trader: " + string(npc_offer) + "\nPlayer: " + string(player_offer), 20, 300);
}