/// @desc This object manages items on screen

// The hand of the player
player_hand = new Deck([instance_create_layer(0, 0, layer, obj_itemslot), 
						instance_create_layer(0, 0, layer, obj_itemslot), 
						instance_create_layer(0, 0, layer, obj_itemslot), 
						instance_create_layer(0, 0, layer, obj_itemslot)]);

// The inventory of the player
player_inv = new Deck([instance_create_layer(0, 0, layer, obj_itemslot), 
						instance_create_layer(0, 0, layer, obj_itemslot), 
						instance_create_layer(0, 0, layer, obj_itemslot), 
						instance_create_layer(0, 0, layer, obj_itemslot)]);

// The hand of the npc
npc_hand = new Deck([]);

items_selected_list = ds_list_create();         // List of all selected items
			
// instance_create_layer(0, 0, layer, obj_textbox);