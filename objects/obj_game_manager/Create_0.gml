/// @description Insert description here
// You can write your code in this editor

status_effect_list = ds_list_create();          // List of the current status effects on the player

ds_list_add(status_effect_list, new StatusEffect(sEff.bToll, -1));

global.game_state = gameState.trading;                 // Current state of the game
global.EVENTQUEUE = ds_queue_create();

blood_reserve = 10;                             // The amount of blood in your reserve
blood_needed = 1;
blood_drank = 0;
drank_poison = false;

encounter_count = 0;
next_encounter = encounter.trader;
encounter_display = false;                      // When the compass is activated you can see the next encounter

compass_effect = 0;                        // How many encounters the compass still has to display

