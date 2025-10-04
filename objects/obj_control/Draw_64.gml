/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

var _gs = game_get_speed(gamespeed_fps);
var _sec = (game_time div _gs);
draw_text(view_wport/2,20,string_replace_all(string("{0}:{1}", 
	string_format(_sec div 60,2,0),
	string_format(_sec mod 60,2,0))," ","0"));