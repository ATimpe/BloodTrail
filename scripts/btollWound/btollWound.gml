// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function btollWound(){
	with (obj_game_manager) {
		blood_reserve -= 2;
		with (instance_position(mouse_x, mouse_y, obj_cup)) {
			if (isObjInDeck(obj_card_bharvest, obj_item_manager.player_hand))
				blood += 4;
			else
				blood += 2;
		}
		// If you are alreayd woudned, you begin bleeding
		if (hasStatusEffect(sEff.wounded))
			addStatusEff(sEff.bleeding, 3);
		addStatusEff(sEff.wounded, 4);
	}
}