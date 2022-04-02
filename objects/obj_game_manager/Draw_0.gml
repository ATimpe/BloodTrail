/// @desc Drawing the game UI

draw_set_font(fnt_other);

draw_text(0, 500, "Blood Reserve: " + string(blood_reserve));

for (var i = 0; i < ds_list_size(status_effect_list); i++) {
	if (status_effect_list[| i].turns != -1)
		draw_text(0, 550 + (i * 50), status_effect_list[| i].str + " " + string(status_effect_list[| i].turns));
	else
		draw_text(0, 550 + (i * 50), status_effect_list[| i].str);
}
	
draw_text(0, 700, "Encounter: " + string(global.encounter_count));

if (encounter_display && global.game_state == gameState.invSort)
	draw_text(0, 850, "Next Encounter: " + getEncounterStr(next_encounter));
	
if (global.game_state == gameState.fight || global.encounter == encounter.bear) {
	draw_text(0, 150, "Attack to beat: " + string(enemy_atk));
	draw_text(0, 200, "Player base attack: " + string(getPlayerPow()));
	draw_text(0, 250, "Player attack roll: " + string(player_fight_roll));
}