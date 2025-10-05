/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

image_angle += 3;

if(y > obj_tax_collector.bbox_top)
{
	
	audio_play_sound(snd_tomato_impact,3,false);
	
	repeat 10
	{
		var _dir = 45+irandom(90);
		var _t = instance_create_depth(x,y,-4,obj_tomato_goop);
		_t.direction = _dir;
		_t.speed = 4;
	}
	
	obj_tax_collector.visible = false;
	instance_destroy();
}

