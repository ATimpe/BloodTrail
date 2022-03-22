// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function runTextFile(_f, _postScript){
	global.game_state = gameState.text;
	with (obj_textbox) {
		fname = _f;
		post_script = _postScript;
		event_perform(ev_other, ev_user0);
	}
}