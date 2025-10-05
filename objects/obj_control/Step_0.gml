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


// map generation
if (moving and time mod 160 == 0)
{
	if(irandom(8) == 0)
		instance_create_layer(720,144,layer,obj_house);
	else
		time -= 1;
		
	//if(irandom(4) == 0 and child_cd  <= 0)
	//{
	//	instance_create_depth(720,230,depth-2,obj_child);
	//	child_cd = 30;
	//}
	
	if(irandom(7) == 0 and sewer_cd  <= 0)
	{
		instance_create_depth(720,252,depth,obj_sewer_hole);
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