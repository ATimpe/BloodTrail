/// @desc Next Encounter

if (compass_effect > 0) {
	compass_effect--;
	if (compass_effect <= 0)
		encounter_display = 0;
}

moveNextEncounter(next_encounter);
global.encounter_count++;