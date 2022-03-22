// Iterates through both player decks to see if there are any empty spaces in them. If not, it will return true
function isInvFull(){
	var i;
	for (i = 0; i < player_hand.s; i++) {
		if (player_hand.d[| i].object_index == obj_itemslot)
			return false;
	}
	
	for (i = 0; i < player_inv.s; i++) {
		if (player_inv.d[| i].object_index == obj_itemslot)
			return false;
	}
	
	return true;
}