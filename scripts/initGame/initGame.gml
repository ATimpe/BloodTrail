// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initGame(){
	enum gameState {
		trading,                     // Allows the player to trade items with NPC
		itemPick,                    // Player picks an item from several
		text,                        // Whenever the game is running a text script
		bToll,                       // When the player has to pay blood between encounters
		invSort,                     // When the player sorts their inventory between encounters
		stump,                       // When the stump encounter occurs
		fight,                       // When the player is in a fight
		dropItem                     // When the player has to drop an item
	}
	
	enum encounter {
		trader,
		stump,
		itemPick,
		chalMan,
		bear,
		robber
	}
	
	enum sEff {
		bToll,
		sick,
		poisoned,
		wounded,
		bleeding,
		hexed
	}

	global.game_state = gameState.itemPick;
	global.select1 = mb_left;
	global.select2 = mb_right;
	global.intro = false;
	global.tutorial = false;
	global.encounter = 0;
	global.dead = false;
	global.trade_blocked = false;
	global.poison_expl = false;
	global.invsort_expl = false;
	global.btoll_expl = false;
	global.trade_expl = false;
	global.bloodreserve_expl = false;
	global.encounter_count = 0;
	global.encounter_high_score = 0;
	global.chalman_cooldown = 4;
	
	global.textspd = 5;
	
	load();
	
	audio_play_sound(mus_main, 0, true);
}