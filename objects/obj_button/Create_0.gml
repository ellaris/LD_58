/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod


image_speed = 0;

game_start = function(){
	obj_control.game_start = true;
	obj_control.toogle_moving();
	
	audio_play_sound(snd_boo_1,3,false);
	audio_play_sound(snd_boo_2,3,false);
	audio_play_sound(snd_boo_3,3,false);
	
	var _t = instance_create_depth(16,16,-1,obj_tomato);
	_t.hspeed = 2.8;
	_t.vspeed = -1.6
	_t = instance_create_depth(16,32,-1,obj_tomato);
	_t.hspeed = 3.5;
	_t.vspeed = -1;
	_t = instance_create_depth(16,48,-1,obj_tomato);
	_t.hspeed = 4.6;
	_t.vspeed = -0;
	
	
	_t = instance_create_depth(16,room_height/2+64,-1,obj_tomato);
	_t.hspeed = 3;
	_t.vspeed = -7
	_t = instance_create_depth(32,room_height/2+64,-1,obj_tomato);
	_t.hspeed = 3.5;
	_t.vspeed = -5.3;
	_t = instance_create_depth(48,room_height/2+64,-1,obj_tomato);
	_t.hspeed = 4;
	_t.vspeed = -5.6;
	
	_t = instance_create_depth(48,-16,-1,obj_tomato);
	_t.hspeed = 4;
	_t.vspeed = -4.0;
	
	with(obj_button)
		instance_destroy();
	with(obj_info)
		instance_destroy();
}