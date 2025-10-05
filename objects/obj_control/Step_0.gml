/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

if(not audio_is_playing(snd_theme))
	audio_play_sound(snd_theme,1,true);

if(game_start and not game_over)
	game_time += 1;
	
var _gs = game_get_speed(gamespeed_fps);

if(not game_over)
{
	var _c_val = ((game_time / _gs) / max_game_time)*150;
	layer_background_blend(cloud_layer,make_color_rgb(255-_c_val,255-_c_val,255-_c_val));
}


if(((game_time div _gs) div max_game_time) == 1 and moving) // 60
{
	toogle_moving();
	if(not game_over)
	{
		if(coins >= 10)
			audio_play_sound(snd_shift_end,2,false);
		else
		{
			audio_play_sound(snd_king_pleased,2,false);
			instance_create_depth(obj_tax_collector.x+16,0,-3,obj_axe);
		}
			
		if(coins > global.best_score)
			global.best_score = coins;
			
		game_over = true;
		
		
	}
	if(instance_number(obj_button) == 0)
	{
		var _btn = instance_create_depth(room_width-64-16,room_height-64-64,-100,obj_button)
		_btn.text = "Back";
		_btn.action = game_restart;
	}
}

if(moving)
{
	time += 1;
	//child_cd -= 1;
	//sewer_cd -= 1;
}

if(house_cd > 0)
	house_cd -= 1
else if(house_cd == 0)
{
	house_cd = -1;
	instance_create_layer(room_width+80,144,layer,obj_house);
}

// map generation
if (moving and time mod 160 == 0)
{
	house_cd = irandom(8);
	//if( == 0)
	//	instance_create_layer(720,144,layer,obj_house);
	//else
	//	time -= 1;
	if( time mod (160*3) == 0)
		audio_play_sound(choose(
		snd_tax_quip_1,snd_tax_quip_2,snd_tax_quip_3,
		snd_tax_quip_4,snd_tax_quip_5,snd_tax_quip_6)
		,2,false);
		
	if(irandom(9) < 4 )//and child_cd  <= 0)
	{
		instance_create_depth(room_width+8,230,depth-2,obj_child);
		//child_cd = 30;
	}
	
	if(irandom(9) < 3)// and sewer_cd  <= 0)
	{
		instance_create_depth(room_width+8,252,depth,obj_sewer_hole);
		//sewer_cd = 30;
	}
}

if(stop_moving_cd >= 0)
	stop_moving_cd -= 1;
if(stop_moving_cd == 0 and not moving)
	toogle_moving();
	
if(keyboard_check_pressed(vk_f12))
{
	debug = not debug;
	toogle_debug_blend();
}