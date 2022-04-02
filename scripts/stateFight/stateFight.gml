// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stateFight(){
	if (fight_start) {
		player_fight_roll = irandom(5) + 1;                   // Roles a 6 sided die
		var _playerAtk = player_fight_roll + getPlayerPow();  // Adds cards in inventory to attack
		
		// This part figures out how bad the damage is from the fight based on the difference between
		// the rolls
		fight_difference = _playerAtk - enemy_atk;
		if (fight_difference > 2) { // Outstanding damage. You sustain no injuries
			// put stuff here
		} else if (fight_difference == 2) { // Good fight, you only gain minor wounds
			addStatusEff(sEff.wounded, 1);
		} else if (fight_difference == 1) { // Fair fight, you only gain minor wounds
			addStatusEff(sEff.wounded, 2);
		} else if (fight_difference == 0) { // Evenly matched. The fight is a draw and you sustain fair wounds
			addStatusEff(sEff.wounded, 4);
		} else if (fight_difference == -1) { // Bad fight. You lose and gain major wounds
			addStatusEff(sEff.wounded, 5);
			addStatusEff(sEff.bleeding, 2);
		} else if (fight_difference == -2) { // Terrible fight. You lose and gain critical wounds
			addStatusEff(sEff.wounded, 7);
			addStatusEff(sEff.bleeding, 4);
		} else if (fight_difference == -3) { // Near death fight. You lose and gain critical wounds
			addStatusEff(sEff.wounded, 10);
			addStatusEff(sEff.bleeding, 7);
		} else if (fight_difference < -3) { // Mortal fight. You lose and die
			runTextFile("death_fight1.txt", death);
		}
		fight_start = false;
		endEncounter();
	}
}