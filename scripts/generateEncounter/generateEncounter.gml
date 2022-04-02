// There are 4 different kinda of encounters: Trading, Risk, Reward, and Rare
// Trading are regular trading encounters
// Risk are any encounters where you stand to lose something even if the encounter can end well like fights
// Reward are encounter where you only stand to benifit from the encounter
// Rare are any misc encounters that are harder to find
function generateEncounter(){
	var _roll = random(100);
	var _riskEncounters = [encounter.robber, encounter.bear];
	var _rewardEncounters = [encounter.stump, encounter.itemPick];
	
	if (global.chalman_cooldown > 0) {
		while(_roll >= 90)
			_roll = random(100);
		global.chalman_cooldown--;
	}
	
	if (_roll < 20)
		return encounter.trader;
	
	else if (_roll < 60)
		return _riskEncounters[irandom(array_length(_riskEncounters) - 1)];
	
	else if (_roll < 90)
		return _rewardEncounters[irandom(array_length(_rewardEncounters) - 1)];
	
	else {
		global.chalman_cooldown = 5;
		return encounter.chalMan;
	}
}