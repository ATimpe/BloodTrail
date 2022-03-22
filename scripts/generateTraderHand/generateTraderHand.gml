// This script is used to generate a random hand for a trader. 
function generateTraderHand(){
	with (obj_item_manager) {
		var _roll = random(100);
	
		// Trader has 2 Chalices and 2 Cards -- 7%
		if (_roll < 7) {
			npc_hand.d[| 0] = instance_create_layer(0, 0, layer, generateChalice(30, 10));
			npc_hand.d[| 1] = instance_create_layer(0, 0, layer, generateChalice(30, 10));
			npc_hand.d[| 2] = instance_create_layer(0, 0, layer, generateCard(30, 10));
			npc_hand.d[| 3] = instance_create_layer(0, 0, layer, generateCard(30, 10));
		}
		// Trader has 2 Chalices and 1 card -- 23%
		else if (_roll < 30) {
			npc_hand.d[| 0] = instance_create_layer(0, 0, layer, generateChalice(30, 10));
			npc_hand.d[| 1] = instance_create_layer(0, 0, layer, generateChalice(30, 10));
			npc_hand.d[| 2] = instance_create_layer(0, 0, layer, generateCard(30, 10));
			npc_hand.d[| 3] = instance_create_layer(0, 0, layer, obj_gold);
		}
		// Trader has 1 Chalice and 2 cards -- 70%
		else {
			npc_hand.d[| 0] = instance_create_layer(0, 0, layer, generateChalice(30, 10));
			npc_hand.d[| 1] = instance_create_layer(0, 0, layer, generateCard(30, 10));
			npc_hand.d[| 2] = instance_create_layer(0, 0, layer, generateCard(30, 10));
			npc_hand.d[| 3] = instance_create_layer(0, 0, layer, obj_gold);
		}
	
		ds_list_shuffle(npc_hand.d);
		npc_hand.s = ds_list_size(npc_hand.d);
	}
}