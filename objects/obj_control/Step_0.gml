/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

if(game_start and not game_over)
	game_time += 1;

var _gs = game_get_speed(gamespeed_fps);
if(((game_time div _gs) div 60) == 1 and moving)
{
	toogle_moving();
	game_over = true;
	if(instance_number(obj_button) == 0)
		instance_create_depth(room_width-64-16,room_height-64-64,-100,obj_button)
}

if(moving)
{
	time += 1;
	child_cd -= 1;
	sewer_cd -= 1;
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
		
	if(irandom(4) == 0 and child_cd  <= 0)
	{
		instance_create_depth(room_width+8,230,depth-2,obj_child);
		child_cd = 30;
	}
	
	if(irandom(7) == 0 and sewer_cd  <= 0)
	{
		instance_create_depth(room_width+8,252,depth,obj_sewer_hole);
		sewer_cd = 30;
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