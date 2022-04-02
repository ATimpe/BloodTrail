// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateItemPick(_encounter = 0){
	with (obj_item_manager) {
		switch (_encounter) {
			case encounter.chalMan:
				setDeckSize(npc_hand, 3);
				addItem(newChalice(obj_cup_chal, 3), npc_hand);
				addItem(newChalice(obj_cup_chal, 3), npc_hand);
				addItem(newChalice(obj_cup_chal, 3), npc_hand);
				with (npc_hand.d[| 0]) {
					poisoned = true;
				}
				ds_list_shuffle(npc_hand.d);
				break;
		
			default:
				setDeckSize(npc_hand, 3);
				addItem(newCard(generateCard(0, 0, true, npc_hand)), npc_hand);
				addItem(newCard(generateCard(0, 0, true, npc_hand)), npc_hand);
				addItem(newCard(generateCard(0, 0, true, npc_hand)), npc_hand);
				break;
		}
		
		npc_hand.s = ds_list_size(npc_hand.d);
	}
}