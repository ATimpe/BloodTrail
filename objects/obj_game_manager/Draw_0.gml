/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_other);

draw_text(0, 500, "Blood Reserve: " + string(blood_reserve));

for (var i = 0; i < ds_list_size(status_effect_list); i++)
	draw_text(0, 550 + (i * 50), status_effect_list[| i].str + " " + string(status_effect_list[| i].turns));
	
draw_text(0, 700, "Encounter: " + string(encounter_count));

if (encounter_display && global.game_state == gameState.invSort)
	draw_text(0, 850, "Next Encounter: " + string(next_encounter));