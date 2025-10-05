/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

road_layer = layer_get_id("lay_bg_road");
//layer_hspeed(road_layer,-1);
time = 0;
child_cd = 0;
sewer_cd = 0;
game_time = 0;

house_cd = 0;

game_start = false;
game_over = false;

debug = false;

moving = true;
wagon_moving = audio_play_sound(snd_wagom_moving,4,true);

stop_moving_cd = 0;
stop_moving_cd_max = game_get_speed(gamespeed_fps)*1.5;

pot_hit = function(){
	stop_moving_cd = stop_moving_cd_max;
	if(moving)
		toogle_moving();
}

toogle_moving = function(){

	if(moving)
	{
		moving = false;
		
		layer_hspeed(road_layer, 0);
		with obj_moving
			moving = other.moving;
		obj_cart.image_speed = 0;
		obj_tax_collector.image_speed = 0;
		
		audio_pause_sound(wagon_moving);
	}
	else
	{
		moving = true;
		
		layer_hspeed(road_layer, -1);
		with obj_moving
			moving = other.moving;
		obj_cart.image_speed = 1;
		obj_tax_collector.image_speed = 1;
		
		audio_resume_sound(wagon_moving);
	}

}

toogle_moving();
//layer_hspeed(road_layer, 0);

toogle_debug_blend = function(){
	with obj_door
		if(obj_control.debug and  thief)
			image_blend = c_red;
		else
			image_blend = c_white;
			
	with obj_window
		if(obj_control.debug)
		{
			if(plant)
				image_blend = c_green;
	
			if(plant and drop)
				image_blend = c_red;
		}
		else
			image_blend = c_white;
			
	with obj_child
		if(obj_control.debug and tomato)
			image_blend = c_red;
		else
			image_blend = c_white;
			
	with obj_sewer_hole
		if(obj_control.debug and image_index == 0)
			image_blend = c_red;
		else
			image_blend = c_white;
}

instance_create_layer(720-160,144,layer,obj_house);

audio_play_sound(snd_theme,1,true);