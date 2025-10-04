/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod


image_speed = 0;

game_start = function(){
	obj_control.game_start = true;
	obj_control.toogle_moving();
	with(obj_button)
		instance_destroy();
	with(obj_info)
		instance_destroy();
}