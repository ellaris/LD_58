/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod


draw_set_color(c_black);
var _gs = game_get_speed(gamespeed_fps);
var _sec = (game_time div _gs);
draw_text(view_wport[0]/2,20,string_replace_all(string("{0}:{1}", 
	string_format(_sec div 60,2,0),
	string_format(_sec mod 60,2,0))," ","0"));
	
	
if(obj_control.game_time mod floor(game_get_speed(gamespeed_fps)*0.5) == 0)
{
	coins = 0;
	with obj_coin
		if(inside)
			other.coins += 1;
}

var _xr = view_wport[0] / room_width;
var _yr = view_hport[0] / room_height;
var _str = string(coins);

if(not game_start)
{
	var _str_best = string("Best Score: {0}",global.best_score);
	draw_set_alpha(0.6);
	draw_set_color(c_white);
	var _xx = string_width(_str_best)/2;
	var _yy = string_height(_str_best)/2;
	draw_rectangle(obj_tax_collector.x*_xr-8-_xx-6,obj_tax_collector.bbox_top*_yr-32-8-_yy,obj_tax_collector.x*_xr-8+_xx+6,obj_tax_collector.bbox_top*_yr-32-8+_yy,false);
	draw_set_color(c_black);
	
	draw_set_alpha(1);
	draw_text(obj_tax_collector.x*_xr-8,obj_tax_collector.bbox_top*_yr-32-8,_str_best);
}

if(game_over)
{
	
	draw_set_alpha(0.6);
	draw_set_color(c_white);
	var _xx = string_width(_str)/2;
	var _yy = string_height(_str)/2;
	draw_rectangle(obj_cart.x*_xr-30-_xx-6,obj_cart.bbox_top*_yr-32-8-_yy,obj_cart.x*_xr-30+_xx+6,obj_cart.bbox_top*_yr-32-8+_yy,false);
	draw_set_color(c_black);
	
	draw_set_alpha(1);
	
	if(achievement_anim < 1)
		achievement_anim += (1+achievement_anim/2)/100;
	
	var _sy = room_height/3;
	var _a = string_split(achievement_string,"\n")
	var _a_val = [sewer_hole_bumps,thief_steals,tomato_hits,pot_hits];
	
	draw_set_halign(fa_left);
	
	var _check_list_x = room_width/2-64;
	
	for(var i = 0; i < array_length(_a);i++)
	{
		var _a_str = _a[i];
		_a_str = string_replace(_a_str,"\n","");
		_xx = string_width(achievement_string);
		_yy = string_height(_a_str);
		draw_set_color(c_white)
		draw_set_alpha(0.6*achievement_anim);
		draw_rectangle((_check_list_x)*_xr-8,(_sy)-_yy/2,(_check_list_x)*_xr+_xx,(_sy)+_yy/2,false);
		
		draw_set_color(c_green);
		if(_a_val[i] != 0)
		{
			draw_set_color(c_red);
			_a_str = string_replace(_a_str,"O","X");
		}
		
		draw_set_alpha(1*achievement_anim);
		draw_text((_check_list_x)*_xr,(_sy),string(_a_str,_a_val[i]));
		_sy += string_height(_a_str)
	}
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	
	draw_set_alpha(1);
	//achievement_string = string_replace(achievement_string,"O","X")
	
	//draw_text(room_width/2,room_height/3,string(achievement_string,sewer_hole_bumps,thief_steals,tomato_hits,pot_hits))
	
}
draw_text(obj_cart.x*_xr-30,obj_cart.bbox_top*_yr-32-8,_str);