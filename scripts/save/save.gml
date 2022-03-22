// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save(){
	ini_open("save.dat");
	//ini_write_real("save1", "encounter_high_score");
	ini_close();
}