// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load(){
	ini_open("save.dat");
	global.encounter_high_score = ini_read_real("save1", "encounter_high_score", 0);
	ini_close();
}