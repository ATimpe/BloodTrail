// Gets what the player's current fighting power is based on their cards and status
function getPlayerPow(){
	var _playerPow = 0;
	
	with (obj_item_manager) {
		for (var i = 0; i < ds_list_size(player_hand.d); i++) {
			if (variable_instance_exists(player_hand.d[| i], "pow"))
				_playerPow += player_hand.d[| i].pow;
		}
	}
	
	return _playerPow;
}