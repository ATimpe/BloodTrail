/// @desc Initialize Variables

status_effect_list = ds_list_create();          // List of the current status effects on the player

ds_list_add(status_effect_list, new StatusEffect(sEff.bToll, -1));

global.game_state = gameState.trading;                 // Current state of the game

blood_reserve = 7;                             // The amount of blood in your reserve
blood_reserve_max = 7;
blood_needed = 1;
blood_drank = 0;
drank_poison = false;

// Fight Encounters
fight_start = false;                // Trigger for the fight to start
player_fight_roll = 0;              // The roll of the player
enemy_atk = 0;                      // Attak power of the current enemy
fight_difference = 0;               // Difference in player atk vs enemy atk

global.encounter_count = 0;
next_encounter = encounter.trader;
encounter_display = false;                      // When the compass is activated you can see the next encounter

compass_effect = 0;                        // How many encounters the compass still has to display