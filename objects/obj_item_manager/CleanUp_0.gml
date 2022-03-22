/// @description Insert description here
// You can write your code in this editor

ds_list_destroy(player_hand.d);
ds_list_destroy(player_inv.d);
ds_list_destroy(npc_hand.d);
ds_list_destroy(items_selected_list);

delete player_hand;
delete player_inv;
delete npc_hand;