// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initGame(){
	enum gameState {
		trading,
		itemPick,
		text,
		bToll,
		invSort
	}
	
	enum encounter {
		trader,
		stump,
		itemPick,
		chalMan
	}
	
	enum sEff {
		bToll,
		sick,
		poisoned
	}
	
	global.EVENTQUEUE = 0;
	global.game_state = gameState.itemPick;
	global.select1 = mb_left;
	global.select2 = mb_right;
	global.intro = false;
	global.tutorial = false;
	global.encounter = 0;
}