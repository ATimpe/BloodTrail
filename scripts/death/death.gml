// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function death(){
	if (global.encounter_count > global.encounter_high_score)
		global.encounter_high_score = global.encounter_count;
	global.encounter = 0;
	global.encounter_count = 0;
	global.dead = false;
	global.chalman_cooldown = 4;
	save();
	room_goto(rm_title);
}