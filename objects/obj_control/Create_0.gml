/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

road_layer = layer_get_id("lay_bg_road");
//layer_hspeed(road_layer,-1);
time = 0;
child_cd = 0;
sewer_cd = 0;
game_time = 0;

game_start = false;
game_over = false;

debug = false;

moving = true;

stop_moving_cd = 0;
stop_moving_cd_max = game_get_speed(gamespeed_fps)*2;

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
	}
	else
	{
		moving = true;
		
		layer_hspeed(road_layer, -1);
		with obj_moving
			moving = other.moving;
		obj_cart.image_speed = 1;
		obj_tax_collector.image_speed = 1;
	}

}

toogle_moving();
//layer_hspeed(road_layer, 0);